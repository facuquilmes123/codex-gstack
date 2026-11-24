$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$bun = Join-Path $HOME ".bun\bin\bun.exe"
$gitBashCandidates = @(
  "$env:ProgramFiles\Git\bin\bash.exe",
  "$env:ProgramFiles\Git\usr\bin\bash.exe",
  "${env:ProgramFiles(x86)}\Git\bin\bash.exe"
) | Where-Object { $_ -and (Test-Path $_) }

if (!(Get-Command bun -ErrorAction SilentlyContinue) -and !(Test-Path $bun)) {
  Write-Host "Installing Bun..."
  powershell -ExecutionPolicy Bypass -NoProfile -Command "irm bun.sh/install.ps1 | iex"
}

if ($gitBashCandidates.Count -eq 0) {
  throw "Git Bash was not found. Install Git for Windows and run this script again."
}

$gitBash = $gitBashCandidates[0]
$gitRoot = Split-Path -Parent (Split-Path -Parent $gitBash)
$env:Path = "$HOME\.bun\bin;$gitRoot\bin;$gitRoot\usr\bin;$env:Path"

Push-Location $repoRoot
try {
  & $gitBash ./setup --host codex --prefix
  if ($LASTEXITCODE -ne 0) {
    throw "setup exited with code $LASTEXITCODE"
  }
}
finally {
  Pop-Location
}

Write-Host ""
Write-Host "Codex GStack installed in $HOME\.codex\skills."
Write-Host "Restart Codex or open a new session, then use commands like gstack-review, gstack-qa and gstack-ship."
