$baseDir = 'target'
$sizes = @('Fulllength.png', 'Medium.png', 'Small.png')

if (Test-Path $baseDir)
{
    Remove-Item $baseDir -Recurse -Force
}
New-Item $baseDir -ItemType Directory

$folders = @(Get-ChildItem . -Directory -Exclude 'target','.git')
if ($folders.Length -gt 0)
{
    foreach ($folder in $folders)
    {
        $files = @(Get-ChildItem $folder.FullName *.png -File)
        foreach ($file in $files)
        {
            $imageNumber = [int]($file.Name.Split('-', 2)[0]) - 1
            $targetNumber = [int]([Math]::Floor($imageNumber / 3))
            $targetFolder = Join-Path $baseDir "$($folder.Name)-$($targetNumber.ToString('00'))"
            $targetFilename = Join-Path $targetFolder $sizes[$imageNumber % 3]
            if (-not (Test-Path $targetFolder))
            {
                New-Item $targetFolder -ItemType Directory
            }
            Copy-Item $file.FullName -Destination $targetFilename
        }
    }
}
