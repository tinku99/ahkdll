// Naveen v1. #define EXPORT __declspec(dllexport) 
#define EXPORT extern "C" __declspec(dllexport)
EXPORT unsigned int addFile(char *fileName, bool aAllowDuplicateInclude, bool aIgnoreLoadFailure);
EXPORT int ahkdll(char *fileName, char *argv, char *args);
