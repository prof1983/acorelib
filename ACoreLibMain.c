/* ACoreLib
Author(Prof1983 prof1983@ya.ru)
Created(28.05.2012)
LastMod(05.06.2012)
Version(0.0.0)
*/

#include <windows.h>

#define A_BUILD_DLL

#include "APlugins.h"
#include "AStrings.h"

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void* lpReserved)
{
    MessageBoxExA(0, NULL, NULL, 0, 0);
	return 1;
}