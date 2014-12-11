. .\tools\utils.ps1

if (Test-Path "C:\Program Files\AppVeyor\BuildAgent\Appveyor.MSBuildLogger.dll") {
	msbuild .\SignalR.Client.TypedHubProxy.sln /logger:"C:\Program Files\AppVeyor\BuildAgent\Appveyor.MSBuildLogger.dll" /p:Configuration=Release
} else {
	msbuild .\SignalR.Client.TypedHubProxy.sln /p:Configuration=Release
}

nuget pack .\SignalR.Client.TypedHubProxy\SignalR.Client.TypedHubProxy.nuspec -OutputDirectory .\SignalR.Client.TypedHubProxy\bin