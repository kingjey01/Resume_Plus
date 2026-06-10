# Community 85: utils

**Members:** 10

## Nodes

- **utils** (`windows_runner_utils_cpp`, File, degree: 9)
- **CreateAndAttachConsole()** (`windows_runner_utils_cpp_createandattachconsole`, Function, degree: 5)
- **GetCommandLineArguments()** (`windows_runner_utils_cpp_getcommandlinearguments`, Function, degree: 6)
- **flutter_windows.h** (`windows_runner_utils_cpp_import_flutter_windows_h`, Module, degree: 1)
- **io.h** (`windows_runner_utils_cpp_import_io_h`, Module, degree: 1)
- **iostream** (`windows_runner_utils_cpp_import_iostream`, Module, degree: 1)
- **stdio.h** (`windows_runner_utils_cpp_import_stdio_h`, Module, degree: 1)
- **utils.h** (`windows_runner_utils_cpp_import_utils_h`, Module, degree: 1)
- **windows.h** (`windows_runner_utils_cpp_import_windows_h`, Module, degree: 1)
- **Utf8FromUtf16()** (`windows_runner_utils_cpp_utf8fromutf16`, Function, degree: 6)

## Relationships

- windows_runner_utils_cpp → windows_runner_utils_cpp_import_utils_h (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_import_flutter_windows_h (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_import_io_h (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_import_stdio_h (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_import_windows_h (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_import_iostream (imports)
- windows_runner_utils_cpp → windows_runner_utils_cpp_createandattachconsole (defines)
- windows_runner_utils_cpp → windows_runner_utils_cpp_getcommandlinearguments (defines)
- windows_runner_utils_cpp → windows_runner_utils_cpp_utf8fromutf16 (defines)
- windows_runner_utils_cpp_getcommandlinearguments → windows_runner_utils_cpp_utf8fromutf16 (calls)
- windows_runner_utils_cpp_createandattachconsole → windows_runner_utils_cpp_getcommandlinearguments (uses)
- windows_runner_utils_cpp_createandattachconsole → windows_runner_utils_cpp_utf8fromutf16 (uses)
- windows_runner_utils_cpp_getcommandlinearguments → windows_runner_utils_cpp_createandattachconsole (uses)
- windows_runner_utils_cpp_getcommandlinearguments → windows_runner_utils_cpp_utf8fromutf16 (uses)
- windows_runner_utils_cpp_utf8fromutf16 → windows_runner_utils_cpp_createandattachconsole (uses)
- windows_runner_utils_cpp_utf8fromutf16 → windows_runner_utils_cpp_getcommandlinearguments (uses)

