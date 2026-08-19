# Verify a Download

## SHA-256

After downloading the EXE and `SHA256SUMS.txt`, run:

```powershell
Get-FileHash ".\MMG-AI-Router-v1.0.9.exe" -Algorithm SHA256
```

The result must match the corresponding line in `SHA256SUMS.txt`.

Or use:

```powershell
.\scripts\verify-release.ps1 `
  -ExePath ".\MMG-AI-Router-v1.0.9.exe" `
  -ChecksumFile ".\SHA256SUMS.txt"
```

## Authenticode

For a release explicitly marked as **signed**, also run:

```powershell
Get-AuthenticodeSignature ".\MMG-AI-Router-v1.0.9.exe" | Format-List
```

`Status` must be `Valid` and the signer must match the expected MMG publisher identity.

If the release is not explicitly marked signed, do not infer that a Windows publisher signature exists.
