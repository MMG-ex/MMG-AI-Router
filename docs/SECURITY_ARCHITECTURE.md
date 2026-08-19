# Security Architecture

## Current v1.0.9 user-facing controls

The current application UI presents the following controls:

- Windows DPAPI / CurrentUser for the API-key vault;
- local logging controls;
- a statement that prompt/message/API-key contents are not written to logs;
- a local system agent limited to named/defined capabilities;
- a device-bound trial/license screen.

These are product/UI observations, not an independent penetration test.

## Public distribution controls

The public GitHub repository must never contain:
- provider API keys;
- `.env` files;
- PFX/P12/PEM private keys;
- license signing private keys;
- production credentials;
- private source repositories;
- raw user logs or API vault backups.

Every public binary release should have:
1. final version number;
2. SHA-256 digest;
3. release notes;
4. clean-machine test;
5. third-party notice review.

Before describing a public release as **signed**, apply a legitimate Authenticode signature and trusted timestamp, then verify it after final packaging.
