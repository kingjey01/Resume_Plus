# Community 40: AudioProcessor

**Members:** 14

## Nodes

- **AudioProcessor** (`backend_courses_audio_processing_py_audioprocessor`, Class, degree: 19)
- **.auto_process_pending_sessions()** (`backend_courses_audio_processing_py_audioprocessor_auto_process_pending_sessions`, Method, degree: 2)
- **.batch_process_sessions()** (`backend_courses_audio_processing_py_audioprocessor_batch_process_sessions`, Method, degree: 3)
- **.cleanup_old_audio_files()** (`backend_courses_audio_processing_py_audioprocessor_cleanup_old_audio_files`, Method, degree: 1)
- **._format_duration()** (`backend_courses_audio_processing_py_audioprocessor_format_duration`, Method, degree: 2)
- **._get_audio_duration()** (`backend_courses_audio_processing_py_audioprocessor_get_audio_duration`, Method, degree: 2)
- **.get_audio_info()** (`backend_courses_audio_processing_py_audioprocessor_get_audio_info`, Method, degree: 4)
- **.get_processing_stats()** (`backend_courses_audio_processing_py_audioprocessor_get_processing_stats`, Method, degree: 1)
- **.__init__()** (`backend_courses_audio_processing_py_audioprocessor_init`, Method, degree: 1)
- **._is_supported_format()** (`backend_courses_audio_processing_py_audioprocessor_is_supported_format`, Method, degree: 2)
- **.process_audio_session()** (`backend_courses_audio_processing_py_audioprocessor_process_audio_session`, Method, degree: 4)
- **._simulate_transcription()** (`backend_courses_audio_processing_py_audioprocessor_simulate_transcription`, Method, degree: 2)
- **._step1_transcribe_audio()** (`backend_courses_audio_processing_py_audioprocessor_step1_transcribe_audio`, Method, degree: 3)
- **._step2_generate_summary()** (`backend_courses_audio_processing_py_audioprocessor_step2_generate_summary`, Method, degree: 3)

## Relationships

- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_init (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_get_audio_info (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_is_supported_format (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_get_audio_duration (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_format_duration (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_process_audio_session (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_step1_transcribe_audio (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_step2_generate_summary (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_simulate_transcription (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_batch_process_sessions (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_auto_process_pending_sessions (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_get_processing_stats (defines)
- backend_courses_audio_processing_py_audioprocessor → backend_courses_audio_processing_py_audioprocessor_cleanup_old_audio_files (defines)
- backend_courses_audio_processing_py_audioprocessor_get_audio_info → backend_courses_audio_processing_py_audioprocessor_format_duration (calls)
- backend_courses_audio_processing_py_audioprocessor_get_audio_info → backend_courses_audio_processing_py_audioprocessor_is_supported_format (calls)
- backend_courses_audio_processing_py_audioprocessor_get_audio_info → backend_courses_audio_processing_py_audioprocessor_get_audio_duration (calls)
- backend_courses_audio_processing_py_audioprocessor_process_audio_session → backend_courses_audio_processing_py_audioprocessor_step1_transcribe_audio (calls)
- backend_courses_audio_processing_py_audioprocessor_process_audio_session → backend_courses_audio_processing_py_audioprocessor_step2_generate_summary (calls)
- backend_courses_audio_processing_py_audioprocessor_step1_transcribe_audio → backend_courses_audio_processing_py_audioprocessor_simulate_transcription (calls)
- backend_courses_audio_processing_py_audioprocessor_batch_process_sessions → backend_courses_audio_processing_py_audioprocessor_process_audio_session (calls)
- backend_courses_audio_processing_py_audioprocessor_auto_process_pending_sessions → backend_courses_audio_processing_py_audioprocessor_batch_process_sessions (calls)

