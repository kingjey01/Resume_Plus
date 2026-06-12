# Community 204: ._clean_transcript()

**Members:** 6

## Nodes

- **._clean_transcript()** (`backend_courses_audio_processing_py_audioprocessor_clean_transcript`, Method, degree: 3)
- **._extract_main_ideas()** (`backend_courses_audio_processing_py_audioprocessor_extract_main_ideas`, Method, degree: 3)
- **._generate_intelligent_summary()** (`backend_courses_audio_processing_py_audioprocessor_generate_intelligent_summary`, Method, degree: 4)
- **._generate_local_summary()** (`backend_courses_audio_processing_py_audioprocessor_generate_local_summary`, Method, degree: 5)
- **._step2_generate_summary()** (`backend_courses_audio_processing_py_audioprocessor_step2_generate_summary`, Method, degree: 3)
- **._structure_summary()** (`backend_courses_audio_processing_py_audioprocessor_structure_summary`, Method, degree: 3)

## Relationships

- backend_courses_audio_processing_py_audioprocessor_step2_generate_summary → backend_courses_audio_processing_py_audioprocessor_generate_local_summary (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_local_summary → backend_courses_audio_processing_py_audioprocessor_extract_main_ideas (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_local_summary → backend_courses_audio_processing_py_audioprocessor_clean_transcript (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_local_summary → backend_courses_audio_processing_py_audioprocessor_structure_summary (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_intelligent_summary → backend_courses_audio_processing_py_audioprocessor_extract_main_ideas (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_intelligent_summary → backend_courses_audio_processing_py_audioprocessor_clean_transcript (calls)
- backend_courses_audio_processing_py_audioprocessor_generate_intelligent_summary → backend_courses_audio_processing_py_audioprocessor_structure_summary (calls)

