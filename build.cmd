setlocal
call %~dp0..\vc_setup.cmd
rem call %~dp0upd_deps.cmd
pushd %~dp0build\msw
title Building wxWidgets Debug
msbuild /m wx_vc17.sln -p:Configuration="DLL Debug"
title Building wxWidgets Release
msbuild /m wx_vc17.sln -p:Configuration="DLL Release"
title Done building wxWidgets
cd ..\..
PdbIndexer %DEPS_SOURCE_URL%/wxWidgets
NuGet.exe pack wxWidgets.nuspec -OutputDirectory %PACKAGES%\nuget_packages
NuGet.exe pack wxWidgets.Dbg.nuspec -OutputDirectory %PACKAGES%\nuget_packages
NuGet.exe pack wxWidgets.Rel.nuspec -OutputDirectory %PACKAGES%\nuget_packages
popd
endlocal
