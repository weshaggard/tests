param (
$targetFramework = "netcoreapp1.1",
$ncaPackageVersion = "1.1.2",
$dotnetPath = "d:\cli\dotnet.exe"
)

$winRID = "win-x64";
$osxRID = "osx-x64";
$linuxRID = "linux-x64";

if ($targetFramework -eq "netcoreapp1.0" -or $targetFramework -eq "netcoreapp1.1")
{
    $winRID = "win10-x64";
    $osxRID = "osx.10.10-x64";
    $linuxRID = "ubuntu.14.04-x64";
}

& $dotnetPath restore -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r $winRID -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r $osxRID -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r $linuxRID -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion

$outputDir = $targetFramework + "-" + $ncaPackageVersion

if ($outputDir -eq $null)
{
  $outputDir = "latest";
}
if ((Test-Path $outputDir))
{
  rm $outputDir -r -force
}

mkdir $outputDir
copy .\obj\project.assets.json $outputDir
move .\bin\Debug\$targetFramework\* $outputDir