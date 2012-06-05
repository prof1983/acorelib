/* ACoreLib
Author(Prof1983 prof1983@ya.ru)
Created(28.05.2012)
LastMod(05.06.2012)
Version(0.5)
*/

#include <windows.h>

#define A_BUILD_DLL

//#include "APlugins.h"
//#include "AStrings.h"

#include "ACoreLibMain.h"

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void* lpReserved)
{
	return 1;
}

//extern "C"
void __export Message(char *s)
{
	i = 10;
	MessageBoxExA(0, s, "From DLL", IDOK, 0);
}

func ShowMessage(AAnsiString S)
{
	MessageBoxExA(0, S, "From DLL", IDOK, 0);
}
