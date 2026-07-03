"""
Service DeepSeek pour la génération de résumés intelligents
DeepSeek API est compatible avec l'API OpenAI

Ce service est utilisé dans l'ÉTAPE 2 du traitement audio:
- Étape 1: Deepgram transcrit l'audio → texte (Transcription)
- Étape 2: DeepSeek génère un résumé intelligent → (Summary)
"""

import os
import logging
import requests
from django.conf import settings

logger = logging.getLogger(__name__)


class DeepSeekService:
    """
    Service pour interagir avec l'API DeepSeek
    
    DeepSeek utilise une API compatible OpenAI, donc on utilise
    le même format de requête que pour GPT.
    
    Documentation: https://platform.deepseek.com/api-docs
    """
    
    # URL de l'API DeepSeek (compatible OpenAI)
    API_URL = "https://api.deepseek.com/v1/chat/completions"
    
    # Modèle à utiliser (deepseek-chat est le modèle principal)
    MODEL = "deepseek-chat"
    
    def __init__(self):
        """Initialise le service avec la clé API depuis les variables d'environnement"""
        self.api_key = self._get_api_key()
    
    def _get_api_key(self):
        """Récupère la clé API DeepSeek depuis les settings ou l'environnement"""
        # Essayer depuis les settings Django
        api_key = getattr(settings, 'DEEPSEEK_API_KEY', None)
        
        # Sinon, essayer depuis les variables d'environnement
        if not api_key:
            api_key = os.environ.get('DEEPSEEK_API_KEY', '')
        
        return api_key
    
    def is_configured(self):
        """Vérifie si le service est correctement configuré"""
        return bool(self.api_key and self.api_key.startswith('sk-'))
    
    def generate_summary(self, transcription_text, course_name, professor, date):
        """
        Génère un résumé intelligent à partir d'une transcription
        
        Args:
            transcription_text: Le texte transcrit par Deepgram
            course_name: Nom du cours
            professor: Nom du professeur
            date: Date de la séance
            
        Returns:
            dict: {
                'success': bool,
                'summary': str (le résumé généré),
                'error': str (en cas d'erreur)
            }
        """
        if not self.is_configured():
            logger.warning("DeepSeek API non configurée")
            return {
                'success': False,
                'error': 'DeepSeek API non configurée. Vérifiez DEEPSEEK_API_KEY.'
            }
        
        # Construire le prompt pour DeepSeek
        prompt = self._build_summary_prompt(
            transcription_text, 
            course_name, 
            professor, 
            date
        )
        
        try:
            # Appeler l'API DeepSeek
            response = self._call_api(prompt)
            
            if response['success']:
                logger.info(f"✅ Résumé DeepSeek généré avec succès")
                
                # NETTOYAGE POST-TRAITEMENT (Sécurité supplémentaire)
                cleaned_summary = self._clean_text(response['content'])
                
                return {
                    'success': True,
                    'summary': cleaned_summary
                }
            else:
                return {
                    'success': False,
                    'error': response['error']
                }
                
        except Exception as e:
            logger.error(f"❌ Erreur DeepSeek: {e}")
            return {
                'success': False,
                'error': str(e)
            }
    
    def _clean_text(self, text):
        """
        Nettoie le texte généré par l'IA.
        PRÉSERVE les blocs de code, LaTeX et tableaux Markdown.
        Nettoie uniquement les artefacts gênants (espaces multiples, lignes vides excessives).
        """
        import re
        if not text:
            return ""

        # 1. Protéger les blocs de code (```...```) en les remplaçant par un placeholder
        code_blocks = []
        def _save_code_block(m):
            code_blocks.append(m.group(0))
            return f'__CODE_BLOCK_{len(code_blocks)-1}__'
        text = re.sub(r'```[\s\S]*?```', _save_code_block, text)

        # 2. Protéger les formules LaTeX ($$...$$ ou $...$)
        latex_blocks = []
        def _save_latex(m):
            latex_blocks.append(m.group(0))
            return f'__LATEX_BLOCK_{len(latex_blocks)-1}__'
        text = re.sub(r'\$\$[\s\S]*?\$\$', _save_latex, text)
        text = re.sub(r'(?<!\$)\$(?!\$)[^\$]*(?<!\$)\$(?!\$)', _save_latex, text)

        # 3. Protéger les tableaux Markdown (lignes avec |)
        table_lines = []
        def _save_table(m):
            table_lines.append(m.group(0))
            return f'__TABLE_BLOCK_{len(table_lines)-1}__'
        # Capturer les lignes consécutives avec |
        text = re.sub(r'((?:^.*\|.*\n?)+)', _save_table, text, flags=re.MULTILINE)

        # 4. Nettoyage doux : espaces, lignes vides, puces mal formées
        text = re.sub(r' +', ' ', text)
        text = re.sub(r'\n{3,}', '\n\n', text)

        # 5. Restaurer les blocs protégés
        for i, block in enumerate(code_blocks):
            text = text.replace(f'__CODE_BLOCK_{i}__', block)
        for i, block in enumerate(latex_blocks):
            text = text.replace(f'__LATEX_BLOCK_{i}__', block)
        for i, block in enumerate(table_lines):
            text = text.replace(f'__TABLE_BLOCK_{i}__', block)

        return text.strip()
    
    def _build_summary_prompt(self, transcription, course_name, professor, date):
        """
        Construit le prompt pour générer un résumé de qualité
        
        Le prompt est conçu pour:
        - Conserver les idées principales
        - Ne pas inventer d'informations
        - Éliminer répétitions et hésitations
        - Utiliser un langage pédagogique
        - Produire des paragraphes cohérents
        """
        
        system_prompt = """Tu es un assistant pédagogique expert en création de résumés universitaires professionnels.
Ton rôle est de transformer une transcription audio brute en un résumé structuré, moderne et lisible.

RÈGLES DE FORMATAGE (STRICTES):
1. UTILISE LE MARKDOWN DE FAÇON INTELLIGENTE:
   - Titres de sections avec ## (pas de # simple).
   - **Gras** pour les concepts clés et définitions importantes.
   - Listes avec - pour les énumérations.
   - Tableaux Markdown pour les comparaisons, données structurées.
   - Citations avec > pour les définitions ou remarques importantes.
   - Blocs de code avec ```python, ```javascript, ```sql, etc. pour les extraits de code.
   - Formules mathématiques entre $$ pour les équations importantes.

2. CONTENU TECHNIQUE:
   - Pour les cours de programmation : TOUS les extraits de code DOIVENT être dans des blocs ```langage.
   - Pour les cours de maths/physique/chimie : utilise $$ LaTeX $$ pour les formules.
   - Conserve l'indentation et la mise en forme des fonctions, algorithmes, commandes.
   - Ne mélange JAMAIS un bloc de code avec un paragraphe classique.

3. STRUCTURE PÉDAGOGIQUE:
   - Introduction brève du sujet.
   - Sections organisées avec ## Titre de section.
   - Points clés en listes avec -.
   - Exemples concrets dans des blocs adaptés.
   - Conclusion synthétique.

4. QUALITÉ ACADÉMIQUE:
   - Conserve les concepts essentiels et les définitions précises.
   - Simplifie les passages complexes sans perdre en rigueur scientifique.
   - Utilise un vocabulaire riche et adapté au niveau universitaire.

Format de sortie attendu: Texte au format Markdown structuré (comme ce message), prêt à être affiché par un lecteur Markdown."""

        user_prompt = f"""Voici une transcription d'un cours que tu dois résumer:

📚 INFORMATIONS DU COURS:
- Cours: {course_name}
- Professeur: {professor}
- Date: {date}

📝 TRANSCRIPTION À RÉSUMER:
{transcription}

---

Génère maintenant un résumé pédagogique de ce cours en suivant les règles indiquées.
Le résumé doit être en français et faire environ 30-50% de la longueur de la transcription originale."""

        return {
            'system': system_prompt,
            'user': user_prompt
        }
    
    def _call_api(self, prompt, temperature=0.3, max_tokens=4000, timeout=120):
        """
        Appelle l'API DeepSeek avec le prompt donné
        
        Args:
            prompt: dict avec 'system' et 'user' messages
            temperature: float, contrôle la créativité (0.3 pour résumés, 0.7 pour QCM)
            max_tokens: int, limite de tokens pour la réponse
            timeout: int, timeout en secondes (120 pour résumés, 60 pour exercices)
            
        Returns:
            dict: {'success': bool, 'content': str, 'error': str}
        """
        headers = {
            'Authorization': f'Bearer {self.api_key}',
            'Content-Type': 'application/json'
        }
        
        # Corps de la requête (format OpenAI compatible)
        payload = {
            'model': self.MODEL,
            'messages': [
                {
                    'role': 'system',
                    'content': prompt['system']
                },
                {
                    'role': 'user',
                    'content': prompt['user']
                }
            ],
            'temperature': temperature,
            'max_tokens': max_tokens,
            'top_p': 0.9
        }
        
        logger.info(f"🚀 Appel API DeepSeek (modèle: {self.MODEL})")
        
        try:
            response = requests.post(
                self.API_URL,
                headers=headers,
                json=payload,
                timeout=timeout
            )
            
            # Vérifier le statut de la réponse
            if response.status_code == 200:
                data = response.json()
                
                # Extraire le contenu de la réponse
                if 'choices' in data and len(data['choices']) > 0:
                    content = data['choices'][0]['message']['content']
                    
                    # Log des tokens utilisés
                    usage = data.get('usage', {})
                    logger.info(f"📊 Tokens utilisés - Prompt: {usage.get('prompt_tokens', '?')}, "
                               f"Completion: {usage.get('completion_tokens', '?')}, "
                               f"Total: {usage.get('total_tokens', '?')}")
                    
                    return {
                        'success': True,
                        'content': content
                    }
                else:
                    return {
                        'success': False,
                        'error': 'Réponse API invalide: pas de contenu'
                    }
            
            elif response.status_code == 401:
                return {
                    'success': False,
                    'error': 'Clé API DeepSeek invalide ou expirée'
                }
            
            elif response.status_code == 429:
                return {
                    'success': False,
                    'error': 'Limite de requêtes DeepSeek atteinte. Réessayez plus tard.'
                }
            
            else:
                error_msg = response.json().get('error', {}).get('message', response.text)
                return {
                    'success': False,
                    'error': f'Erreur API DeepSeek ({response.status_code}): {error_msg}'
                }
                
        except requests.exceptions.Timeout:
            return {
                'success': False,
                'error': 'Timeout: La génération du résumé a pris trop de temps'
            }
        except requests.exceptions.RequestException as e:
            return {
                'success': False,
                'error': f'Erreur de connexion à DeepSeek: {str(e)}'
            }


    def generate_exercises(self, resume_text, course_name, difficulty='medium'):
        """
        Génère des exercices QCM à partir d'un résumé de cours
        
        Utilise la même logique d'appel API que generate_summary,
        mais avec un prompt spécialisé pour la génération de QCM.
        
        Args:
            resume_text: Le texte du résumé
            course_name: Nom/titre du cours
            difficulty: 'easy', 'medium', 'hard'
            
        Returns:
            dict: {
                'success': bool,
                'content': str (le JSON brut des questions),
                'error': str (en cas d'erreur)
            }
        """
        if not self.is_configured():
            logger.warning("DeepSeek API non configurée pour la génération d'exercices")
            return {
                'success': False,
                'error': 'DeepSeek API non configurée. Vérifiez DEEPSEEK_API_KEY.'
            }
        
        prompt = self._build_exercises_prompt(resume_text, course_name, difficulty=difficulty)
        
        try:
            response = self._call_api(prompt, temperature=0.7, max_tokens=2000, timeout=60)
            
            if response['success']:
                logger.info(f"✅ Exercices DeepSeek générés avec succès pour: {course_name}")
                return {
                    'success': True,
                    'content': response['content']
                }
            else:
                return {
                    'success': False,
                    'error': response['error']
                }
                
        except Exception as e:
            logger.error(f"❌ Erreur DeepSeek (exercices): {e}")
            return {
                'success': False,
                'error': str(e)
            }
    
    def _build_exercises_prompt(self, resume_text, course_name, difficulty='medium'):
        """
        Construit le prompt pour générer des QCM de qualité
        
        Le prompt est conçu pour:
        - Générer exactement 5 à 10 questions à choix multiples
        - Couvrir différents aspects du résumé
        - Adapter la difficulté selon le paramètre (easy/medium/hard)
        - Inclure des explications pédagogiques
        - Retourner un JSON strict parsable
        """
        
        # Mapper la difficulté au niveau pédagogique avec instructions détaillées
        difficulty_labels = {
            'easy': 'FACILE — Questions de base uniquement. Définitions simples, faits évidents du résumé, reconnaissance directe. '
                    'Les réponses doivent être immédiatement identifiables par un étudiant ayant lu le résumé. '
                    'AUCUNE question d\'analyse ou de synthèse. Distracteurs très différents de la bonne réponse.',
            'medium': 'MOYEN — Questions de compréhension et d\'application. Relier des concepts, expliquer des relations, '
                      'identifier des causes/conséquences. Les distracteurs sont plausibles mais un étudiant attentif '
                      'peut les écarter. Questions qui nécessitent de comprendre le "pourquoi" pas juste le "quoi".',
            'hard': 'DIFFICILE — Questions d\'analyse, synthèse et évaluation. Cas complexes, pièges subtils, '
                    'distinctions fines entre concepts proches. Les distracteurs sont très proches de la bonne réponse. '
                    'Nécessite un raisonnement en plusieurs étapes. Questions qui testent la maîtrise approfondie.',
        }
        difficulty_text = difficulty_labels.get(difficulty, difficulty_labels['medium'])
        
        system_prompt = f"""Tu es un expert en création de questions à choix multiples (QCM) éducatives pour des cours universitaires.
NIVEAU DE DIFFICULTÉ DEMANDÉ: {difficulty_text}

RÈGLES STRICTES À SUIVRE:
1. Générer exactement 5 à 10 questions de qualité
2. Chaque question doit avoir exactement 4 options (A, B, C, D)
3. Une seule réponse correcte par question
4. Adapter la difficulté au niveau demandé ci-dessus
5. Couvrir différents aspects du résumé fourni
6. NE JAMAIS inventer d'informations qui ne sont pas dans le résumé
7. Inclure une explication claire pour chaque bonne réponse
8. Les distracteurs (mauvaises réponses) doivent être plausibles mais clairement incorrects
9. INTERDICTION ABSOLUE : NE JAMAIS utiliser "Concept A", "Concept B", "Option A", "Option B" ou tout placeholder générique. Chaque option DOIT être un texte réel, précis et pertinent basé sur le contenu du résumé.

FORMAT DE SORTIE (JSON strict, aucun texte autour):
[
  {{
    "question": "Texte de la question ?",
    "options": {{
      "A": "Texte réel de l'option A basé sur le résumé",
      "B": "Texte réel de l'option B basé sur le résumé",
      "C": "Texte réel de l'option C basé sur le résumé",
      "D": "Texte réel de l'option D basé sur le résumé"
    }},
    "correct_answer": "A",
    "explanation": "Explication de pourquoi A est correct"
  }}
]"""

        user_prompt = f"""Voici un résumé de cours pour lequel tu dois générer des QCM:

📚 COURS: {course_name}
🎯 NIVEAU: {difficulty_text}

📝 RÉSUMÉ:
{resume_text}

---

Génère exactement 5 à 10 questions QCM basées sur ce résumé au niveau demandé.
Réponds UNIQUEMENT avec le JSON, sans texte supplémentaire."""

        return {
            'system': system_prompt,
            'user': user_prompt
        }


    def translate_summary(self, text, target_language='fr'):
        """
        Traduit un résumé dans la langue cible avec un style académique.
        """
        if not self.is_configured():
            return {'success': False, 'error': 'Service non configuré'}

        system_prompt = f"""Tu es un traducteur académique expert.
        Ta mission est de traduire le texte suivant en {target_language}.

        RÈGLES:
        1. Conserve le sens exact et le formatage Markdown du contenu original.
        2. Produis une traduction naturelle, fluide et humaine.
        3. Adapte les formulations au contexte universitaire.
        4. Préserve les blocs de code, formules LaTeX, tableaux et citations Markdown."""

        user_prompt = f"Texte à traduire :\n\n{text}"

        try:
            response = self._call_api({'system': system_prompt, 'user': user_prompt}, temperature=0.3)
            if response['success']:
                return {'success': True, 'content': self._clean_text(response['content'])}
            return response
        except Exception as e:
            return {'success': False, 'error': str(e)}

    def reformulate_summary(self, text):
        """
        Reformule un résumé pour le rendre plus clair ou changer le ton.
        """
        if not self.is_configured():
            return {'success': False, 'error': 'Service non configuré'}

        system_prompt = """Tu es un expert en pédagogie universitaire.
        Ta mission est de reformuler le texte suivant pour le rendre plus fluide, plus clair et plus engageant pour un étudiant.

        RÈGLES:
        1. Ne perds aucune information essentielle.
        2. Améliore les transitions entre les idées.
        3. Utilise un style "humain" et naturel.
        4. PRÉSERVE le formatage Markdown : blocs de code, formules LaTeX, tableaux, listes.
        5. Organise le texte de manière élégante et aérée."""

        user_prompt = f"Texte à reformuler :\n\n{text}"

        try:
            response = self._call_api({'system': system_prompt, 'user': user_prompt}, temperature=0.4)
            if response['success']:
                return {'success': True, 'content': self._clean_text(response['content'])}
            return response
        except Exception as e:
            return {'success': False, 'error': str(e)}

    def simplify_summary(self, text):
        """
        Simplifie un résumé complexe pour le rendre plus accessible.
        """
        if not self.is_configured():
            return {'success': False, 'error': 'Service non configuré'}

        system_prompt = """Tu es un vulgarisateur scientifique expert.
        Ta mission est de simplifier les concepts complexes du texte suivant sans sacrifier la précision.

        RÈGLES:
        1. Explique les termes techniques.
        2. Utilise des analogies si nécessaire.
        3. Structure le texte en étapes logiques.
        4. PRÉSERVE le formatage Markdown : blocs de code, formules LaTeX, tableaux, listes.
        5. Rendu visuel propre et professionnel."""

        user_prompt = f"Texte à simplifier :\n\n{text}"

        try:
            response = self._call_api({'system': system_prompt, 'user': user_prompt}, temperature=0.4)
            if response['success']:
                return {'success': True, 'content': self._clean_text(response['content'])}
            return response
        except Exception as e:
            return {'success': False, 'error': str(e)}

# Instance globale du service DeepSeek
deepseek_service = DeepSeekService()

