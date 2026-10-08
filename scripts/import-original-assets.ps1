param(
  [Parameter(Mandatory = $true)]
  [string]$ZipPath,
  [switch]$Push
)

$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$zip = (Resolve-Path $ZipPath).Path
$temp = Join-Path ([System.IO.Path]::GetTempPath()) ('AIR-assets-' + [guid]::NewGuid().ToString('N'))

try {
  Expand-Archive -LiteralPath $zip -DestinationPath $temp -Force
  $source = Join-Path $temp 'air-expo/assets/images'
  if (-not (Test-Path $source)) {
    throw "O ZIP informado não contém air-expo/assets/images/. Use AIR_EXPO_MVP.zip."
  }
  $target = Join-Path $root 'assets/images'
  New-Item -ItemType Directory -Path $target -Force | Out-Null
  Copy-Item -Path (Join-Path $source '*') -Destination $target -Recurse -Force

  $release = Join-Path $root 'releases'
  New-Item -ItemType Directory -Path $release -Force | Out-Null
  Copy-Item -LiteralPath $zip -Destination (Join-Path $release 'AIR_EXPO_MVP_original.zip') -Force

  Push-Location $root
  try {
    $count = (Get-ChildItem $target -File).Count
    Write-Host "Assets originais copiados: $count"
    git status --short
    if ($Push) {
      git add assets/images releases/AIR_EXPO_MVP_original.zip
      git commit -m "assets: importar imagens fotorrealistas originais e ZIP MVP"
      git push origin main
    } else {
      Write-Host "Para publicar: git add assets/images releases && git commit -m 'assets: importar imagens originais' && git push"
    }
  } finally {
    Pop-Location
  }
} finally {
  if (Test-Path $temp) { Remove-Item $temp -Recurse -Force }
}
