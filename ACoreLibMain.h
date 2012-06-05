/* ACore library
Author(Prof1983 prof1983@ya.ru)
Created(05.06.2012)
LastMod(05.06.2012)
Version(0.5)
*/

#include "ABase2.h"

#if defined(A_BUILD_DLL)
# define DLL_EXP __declspec(dllexport)
#else
# if defined(A_BUILD_APP)
# define DLL_EXP __declspec(dllimport)
# else
# define DLL_EXP
# endif
#endif

DLL_EXP void Message(char* s);
DLL_EXP int i;

func ShowMessage(AAnsiString S);
