dotnet restore
dotnet publish -f netcoreapp1.1 -r win10-x64
dotnet publish -f netcoreapp1.1 -r osx.10.10-x64
dotnet publish -f netcoreapp1.1 -r ubuntu.14.04-x64

$outputDir = $args[0]

if ($outputDir -eq $null)
{
  $outputDir = "latest";
}
if ((Test-Path $outputDir))
{
  rmdir $outputDir
}

mkdir $outputDir
copy .\project.lock.json $outputDir
move .\bin\Debug\netcoreapp1.1\* $outputDir