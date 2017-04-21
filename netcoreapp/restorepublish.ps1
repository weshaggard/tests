param (
$targetFramework = "netcoreapp1.1",
$ncaPackageVersion = "1.1.1",
$dotnetPath = "d:\cli\dotnet.exe"
)

& $dotnetPath restore -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r win10-x64 -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r osx.10.10-x64 -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion
& $dotnetPath publish -f $targetFramework -r ubuntu.14.04-x64 -p:TargetFramework=$targetFramework -p:RuntimeFrameworkVersion=$ncaPackageVersion

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