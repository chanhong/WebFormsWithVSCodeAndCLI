param([string]$command, [string]$project)

$solutionPath = Split-Path $MyInvocation.MyCommand.Path
$projectPath = "$solutionPath\$project\$project.csproj"
$testPath = "$solutionPath\$project.Tests\bin\Debug\$project.Tests.dll"

$iisExpress = "C:\Program Files (x86)\IIS Express\iisexpress.exe"
$msBuild = "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"
$vsTest = "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe"

if($command -eq "run"){
    Start-Process $issExpress -Verb RunAs -ArgumentList "/config:$solutionPath\.vs\config\applicationhost.config /site:$project"
}
elseif ($command -eq "build") {
    Write-Host "Building: " $projectPath
    & $msBuild $projectPath
}
elseif ($command -eq "test") {
    Write-Host "Running Tests for: " $testPath
    & $vsTest $testPath
}
else {
    Write-Host "Command not found:" $command
}