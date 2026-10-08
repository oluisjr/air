param(
  [Parameter(Mandatory = $true)]
  [string]$ZipPath,
  [switch]$Push
)

$ErrorActionPreference = "Stop"
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$zipAbsolutePath = (Resolve-Path $ZipPath).Path
$temp = Join-Path ([System.IO.Path]::GetTempPath()) ("air-mvp-" + [guid]::NewGuid().ToString("N"))
$preserve = @("README.md", "AGENTS.md", "CODEX_HANDOFF.md")

try {
  New-Item -ItemType Directory -Path $temp -Force | Out-Null
  Expand-Archive -LiteralPath $zipAbsolutePath -DestinationPath $temp -Force
  $source = Join-Path $temp "air-expo"
  if (-not (Test-Path (Join-Path $source "App.tsx"))) {
    throw "O ZIP nao contem air-expo/App.tsx. Verifique se este e o AIR_EXPO_MVP.zip."
  }

  Get-ChildItem -LiteralPath $source -Force | ForEach-Object {
    if ($preserve -contains $_.Name) {
      Write-Host "Mantendo arquivo atual: $($_.Name)"
    } else {
      Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $repoRoot $_.Name) -Recurse -Force
      Write-Host "Importado: $($_.Name)"
    }
  }

  Push-Location $repoRoot
  try {
    Write-Host "Projeto Expo importado. Verifique o estado do Git:"
    git status --short
    Write-Host "Para publicar manualmente, execute: git add . ; git commit -m 'feat: importar AIR Expo MVP com assets' ; git push origin main"
    if ($Push) {
      git add .
      git commit -m "feat: importar AIR Expo MVP com assets"
      git push origin main
      Write-Host "MVP publicado no GitHub."
    }
  }
  finally { Pop-Location }
}
finally {
  if (Test-Path $temp) { Remove-Item -LiteralPath $temp -Recurse -Force }
}
