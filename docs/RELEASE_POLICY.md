# Release Policy

## Repository vs Release

Normal repository:
- README and documentation;
- screenshots/diagrams;
- verification scripts;
- security policy.

GitHub Release:
- final EXE;
- SHA256SUMS.txt;
- optional public demo video;
- release notes.

## Release gate

- [ ] Version number is final.
- [ ] Clean Windows test passed.
- [ ] Screenshots match the distributed product.
- [ ] No private keys/secrets are in the binary staging folder.
- [ ] SHA-256 generated from the final binary.
- [ ] Third-party notices reviewed.
- [ ] If release is called signed/stable: Authenticode + trusted timestamp verified.
