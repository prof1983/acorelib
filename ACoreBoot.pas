{**
@Abstract ACore
@Author Prof1983 <prof1983@ya.ru>
@Created 30.10.2009
@LastMod 28.08.2012
}
unit ACoreBoot;

{$ifdef A04}{$define ADepr}{$endif}

interface

{$I A.inc}

uses
  {$ifdef ADepr}
  ACollectionsMod,
  ADataMod,
  APluginsMod,
  ARuntimeMod,
  ASettingsMod,
  ASystemMod,
  AUiMod,
  AUtilsMod;
  {$endif}
  APluginsExp, APluginsMain,
  ARuntimeExp, ARuntimeMain,
  AStringsExp,
  ASystemExp, ASystemMain,
  AUiMain;

function Core_Boot(): Integer; stdcall;
{$ifdef ADepr}
function Core_Done(): Integer; stdcall;
{$endif}
function Core_Fin(): Integer; stdcall;
function Core_Init(): Integer; stdcall;
function Core_Run(): Integer; stdcall;

implementation

function Core_Boot(): Integer;
begin
  {$ifdef ADepr}
  ARuntimeMod_Boot();
  ACollectionsMod_Boot();
  ADataMod_Boot();
  APluginsMod_Boot();
  ASettingsMod_Boot();
  ASystemMod_Boot();
  AUiMod_Boot();
  AUtilsMod_Boot();
  {$endif}
  Result := 0;
end;

{$ifdef ADepr}
function Core_Done(): Integer;
begin
  Result := Core_Fin();
end;
{$endif}

function Core_Fin(): Integer;
begin
  {$ifdef ADepr}
  ARuntimeMod_Fin();
  {$else}
  ARuntime_Fin();
  {$endif}

  //{$IFNDEF DELPHI_2010}
  //Application := nil;
  //{$ENDIF}

  Result := 0;
end;

function Core_Init(): Integer;
begin
  {$ifdef ADepr}
  ARuntimeMod_Init();
  ASystemMod_Init();
  AUiMod_Init();
  APluginsMod_Init();
  {$else}
  ASystem_Init();
  AUi_Init();
  APlugins_Init();
  {$endif}
  Result := 0;
end;

function Core_Run(): Integer;
begin
  ARuntime_Run();
  Result := 0;
end;

end.
 