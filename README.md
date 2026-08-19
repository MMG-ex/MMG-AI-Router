<p align="center">
  <img src="assets/brand/mmg-ai-router-hero-v1.0.9.jpg" alt="MMG AI Router" width="100%">
</p>

<p align="center">
  <strong>ONE EXE. ONE CONTROL PLANE. MANY AI PROVIDERS.</strong><br>
  Windows-first local AI routing control plane by <strong>MMG AI & AUTOMATION • YAZILIM</strong>.
</p>

<p align="center">
  <a href="../../releases"><strong>Releases</strong></a>
  ·
  <a href="README_TR.md">Türkçe</a>
  ·
  <a href="docs/VERIFY_DOWNLOAD.md">Verify a Download</a>
  ·
  <a href="SECURITY.md">Security</a>
</p>

## What it does

MMG AI Router gives Windows users a single desktop control shell for connecting compatible AI coding clients to a local routing layer without manually editing PowerShell commands, npm commands, ports, or configuration files for routine use.

Current v1.0.9 product areas include:

- **One-click client connection** for Codex / ChatGPT Desktop and Claude Code Desktop workflows.
- **Provider catalog and guided credential setup** from one place.
- **Automatic model routing and fallback** when a provider/model fails or is rate-limited.
- **Local system agent** restricted to defined/allowlisted operations.
- **Codex diagnostics** and connection testing.
- **Device-bound trial/license flow**.
- **Local logs, privacy settings, and encrypted API export/import workflow**.

> MMG AI Router is an independent product. Third-party product/service names belong to their respective owners.

## The product in one screen

<p align="center">
  <img src="assets/screenshots/01-one-click-connections.png" alt="MMG AI Router one-click connections" width="92%">
</p>

The primary workflow checks the local router, preserves existing client configuration, and prepares the supported client connection paths from one control screen.

## Demo

<p align="center">
  <a href="../../releases/tag/v1.0.9">
    <img src="assets/demo/mmg-ai-router-v1.0.9-preview.gif" alt="MMG AI Router demo preview" width="82%">
  </a>
</p>

The cleaned public demo is prepared as a **v1.0.9 Release asset**. Public media omits local usernames and device-specific identifier details.

## Core capabilities

### Provider catalog & guided setup

<p align="center">
  <img src="assets/screenshots/02-api-providers.png" alt="API provider catalog" width="88%">
</p>

Centralized provider discovery, guided API-key setup, connection testing, and status management.

### Automatic routing & fallback

<p align="center">
  <img src="assets/screenshots/03-model-router-fallback.png" alt="Automatic model router fallback" width="88%">
</p>

The router can rank available provider/model candidates and apply a configured fallback chain.

### Restricted local system agent

<p align="center">
  <img src="assets/screenshots/04-local-system-agent.png" alt="Local system agent" width="88%">
</p>

The current UI exposes defined local capabilities while explicitly keeping unrestricted PowerShell, arbitrary file deletion, arbitrary Registry writes, and service shutdown outside the normal agent surface.

### Codex diagnostics

<p align="center">
  <img src="assets/screenshots/05-codex-diagnostics.png" alt="Codex diagnostics" width="88%">
</p>

Connection and Responses API diagnostics are available separately from the normal one-click workflow.

### Trial & device license

<p align="center">
  <img src="assets/screenshots/06-license-trial.png" alt="Trial and license screen" width="88%">
</p>

The current build presents a 4-day trial and a device-bound license activation flow. Device-specific identifier details are intentionally omitted from the public screenshot.

### Privacy & router settings

<p align="center">
  <img src="assets/screenshots/07-settings-privacy.png" alt="Privacy and router settings" width="88%">
</p>

The current v1.0.9 UI identifies Windows DPAPI / CurrentUser for API-key storage and states that prompt, message, and API-key contents are not written to local logs. These statements describe the current product UI and are not a formal security audit.

## Architecture

<p align="center">
  <img src="assets/diagrams/architecture.png" alt="Architecture" width="92%">
</p>

## Security & release trust

<p align="center">
  <img src="assets/diagrams/security-trust-model.png" alt="Security trust model" width="92%">
</p>

Public release policy:

1. publish the binary through **GitHub Releases**, not as a normal repository file;
2. publish a matching **SHA-256** digest;
3. never commit API keys, private license-signing keys, PFX/P12 certificates, `.env` files, or production credentials;
4. use **Authenticode + trusted timestamping** before describing a release as signed/stable;
5. keep proprietary source and private license infrastructure outside this public distribution repository.

Read:
- [Security architecture](docs/SECURITY_ARCHITECTURE.md)
- [Verify a download](docs/VERIFY_DOWNLOAD.md)
- [Release policy](docs/RELEASE_POLICY.md)
- [Privacy notes](docs/PRIVACY.md)

## Public landscape / positioning

Local LLM gateways, multi-provider routers, coding-client gateways and model-routing systems already exist publicly. MMG AI Router therefore does **not** claim to be the world's first AI router.

The product positioning is the combined Windows-first experience: **single EXE shell + guided one-click client connection + local routing + provider/model management + commercial device licensing + verifiable release distribution**.

See [research notes](docs/RESEARCH_2026-08-19.md).

## License & third-party software

The MMG wrapper, branding and original distribution are proprietary unless a file says otherwise. Third-party components and services remain subject to their own licenses/terms.

See:
- [LICENSE.md](LICENSE.md)
- [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)

---

<p align="center">
  <img src="assets/brand/mmg-horizontal-white.png" alt="MMG AI & Automation Yazılım" width="58%">
</p>
