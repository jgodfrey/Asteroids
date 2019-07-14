$godotExe = "C:\Program Files\Godot\Godot_v3.1.1-stable_win64.exe"
$zipExe = "C:\Program Files\7-Zip\7z.exe"

$basePath = "c:\Dev\Godot\Asteroids"
$buildPath = "$basePath\Build\Windows"
$projectName = "Asteroids"

Remove-Item $buildPath\*.7z
Remove-Item $buildPath\*.exe
Remove-Item $buildPath\*.pck

& $godotExe --path $basePath --export "Windows Desktop" "$buildPath\${projectName}.exe"
& $zipExe a "$buildPath\${projectName}_Win.7z" "$buildPath\${projectName}.*"