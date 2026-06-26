$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$bun = Join-Path $HOME ".bun\bin\bun.exe"
$gitBashCandidates = @(
  "$env:ProgramFiles\Git\bin\bash.exe",
  "$env:ProgramFiles\Git\usr\bin\bash.exe",
  "${env:ProgramFiles(x86)}\Git\bin\bash.exe"
) | Where-Object { $_ -and (Test-Path $_) }

if (!(Test-Path $bun)) {
  Write-Host "Installing Bun..."
  powershell -ExecutionPolicy Bypass -NoProfile -Command "irm bun.sh/install.ps1 | iex"
}

if ($gitBashCandidates.Count -eq 0) {
  throw "Git Bash was not found. Install Git for Windows and run this script again."
}

$env:Path = "$HOME\.bun\bin;C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin;$env:Path"

Push-Location $repoRoot
try {
  & $gitBashCandidates[0] ./setup --host codex --prefix
}
finally {
  Pop-Location
}

Write-Host ""
Write-Host "Codex GStack installed."
Write-Host "Restart Codex or open a new session, then use commands like gstack-review, gstack-qa and gstack-ship."
