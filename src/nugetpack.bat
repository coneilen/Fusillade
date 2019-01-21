IF NOT EXIST .\lib\netstandard2.0 mkdir lib\netstandard2.0
copy .\Fusillade\bin\Release\netstandard2.0\Fusillade.dll .\lib\netstandard2.0
copy .\Fusillade\bin\Release\netstandard2.0\Fusillade.pdb .\lib\netstandard2.0

REM ..\tools\vstsnuget\nuget.exe sources Add -Name "MsnApps" -Source "https://microsoft.pkgs.visualstudio.com/_packaging/MsnApps/nuget/v3/index.json"
REM ..\tools\msnuget\nuget.exe push -Source "KobolinNugetFeed" -ApiKey AzureDevOps .\fusillade_Microsoft.1.0.0.nupkg
..\tools\vstsnuget\nuget.exe push -Source "MsnApps" -ApiKey AzureDevOps .\fusillade_Microsoft.1.0.0.nupkg