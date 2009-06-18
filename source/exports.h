// Naveen v1. #define EXPORT __declspec(dllexport) 
#define EXPORT extern "C" __declspec(dllexport)
#define BIF(fun) void fun(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount)

EXPORT unsigned int addFile(char *fileName, bool aAllowDuplicateInclude, int aIgnoreLoadFailure);
EXPORT int ahkdll(char *fileName, char *argv, char *args);
void BIF_Import(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount);
void BIF_Getvar(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount);

BIF(BIF_Static) ;
BIF(BIF_Alias) ;
BIF(BIF_CacheEnable) ;
BIF(BIF_GetTokenValue) ;
