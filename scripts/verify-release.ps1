param(
  [Parameter(Mandatory=$true)][string]$ExePath,
  [Parameter(Mandatory=$true)][string]$ChecksumFile
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $ExePath)) { throw "EXE not found: $ExePath" }
if (-not (Test-Path $ChecksumFile)) { throw "Checksum file not found: $ChecksumFile" }

$resolved = Resolve-Path $ExePath
$name = Split-Path $resolved -Leaf

Write-Host "=== MMG AI Router Release Verification ===" -ForegroundColor Cyan

$actual = (Get-FileHash $resolved -Algorithm SHA256).Hash.ToUpperInvariant()
$line = Get-Content $ChecksumFile | Where-Object { $_ -match [regex]::Escape($name) + '$' } | Select-Object -First 1
if (-not $line) { throw "No checksum entry found for $name" }

$expected = ($line -split '\s+')[0].Trim().ToUpperInvariant()

Write-Host "SHA-256 actual   : $actual"
Write-Host "SHA-256 expected : $expected"

if ($actual -ne $expected) { throw "SHA-256 mismatch. Do not run this file." }

$sig = Get-AuthenticodeSignature $resolved
Write-Host "Signature status : $($sig.Status)"
if ($sig.SignerCertificate) {
  Write-Host "Signer           : $($sig.SignerCertificate.Subject)"
}

Write-Host ""
Write-Host "SHA-256 MATCHED." -ForegroundColor Green
if ($sig.Status -eq "Valid") {
  Write-Host "Authenticode signature is VALID." -ForegroundColor Green
} else {
  Write-Host "No valid Authenticode signature was confirmed. Do not describe this release as signed." -ForegroundColor Yellow
}
