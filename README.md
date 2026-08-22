<p align="center">
  <img src="assets/brand/mmg-ai-router-hero-v1.0.9.jpg" alt="MMG AI Router" width="100%">
</p>

<h1 align="center">MMG AI Router</h1>

<p align="center">
  <strong>One Windows app to connect AI coding clients, manage providers, route models, and recover from provider failures.</strong>
</p>

<p align="center">
  <a href="https://github.com/MMG-ex/MMG-AI-Router/releases/download/v1.0.9/MMG-AI-Router-v1.0.9.exe"><strong>⬇ Download v1.0.9 for Windows x64</strong></a>
  ·
  <a href="https://github.com/MMG-ex/MMG-AI-Router/releases/tag/v1.0.9">Release notes</a>
  ·
  <a href="README_TR.md">Türkçe</a>
</p>

<p align="center">
  <img alt="Windows x64" src="https://img.shields.io/badge/Windows-x64-0A66C2?logo=windows11&logoColor=white">
  <img alt="Release v1.0.9" src="https://img.shields.io/badge/Public%20Release-v1.0.9-E2A314">
  <img alt="Local first" src="https://img.shields.io/badge/Local--first-routing-071E48">
  <img alt="SHA-256" src="https://img.shields.io/badge/SHA--256-published-16A34A">
</p>

Why MMG AI Router?

Using multiple AI coding clients on Windows quickly becomes a configuration problem: different base URLs, model names, provider credentials, fallback rules, local ports, and client-specific configuration files.

MMG AI Router turns that setup into one local desktop control plane.

Instead of repeatedly editing PowerShell commands, npm commands, JSON/TOML files, ports, and provider settings, you manage the supported workflow from one interface.

The short version

Manual setup

MMG AI Router

Edit client config files by hand

One-click client connection workflow

Track provider keys separately

Central provider catalog and local credential vault

Reconfigure when a model/provider fails

Automatic model routing and fallback

Troubleshoot ports and endpoints manually

Built-in connection and Codex diagnostics

Separate local tools and scripts

Restricted local system agent

Rebuild the same setup after changes

Backup/restore-oriented configuration flow

See it in action

<p align="center">
  <a href="https://github.com/MMG-ex/MMG-AI-Router/releases/tag/v1.0.9">
    <img src="assets/demo/mmg-ai-router-v1.0.9-preview.gif" alt="MMG AI Router v1.0.9 demo" width="86%">
  </a>
</p>

<p align="center">
  <a href="https://github.com/MMG-ex/MMG-AI-Router/releases/download/v1.0.9/MMG-AI-Router-v1.0.9-Public-Demo.mp4"><strong>▶ Watch the public demo MP4</strong></a>
</p>

What you can do

<table>
<tr>
<td width="50%" valign="top">

⚡ Connect clients from one screen

<img src="assets/screenshots/01-one-click-connections.png" alt="One-click client connections">

Connect supported Codex / ChatGPT Desktop and Claude Code Desktop workflows to the local MMG routing layer without routine manual configuration.

</td>
<td width="50%" valign="top">

🔌 Manage AI providers

<img src="assets/screenshots/02-api-providers.png" alt="Provider catalog">

Discover providers, add credentials, test saved entries, and manage connection status from one provider catalog.

</td>
</tr>
<tr>
<td width="50%" valign="top">

🔀 Route models and fail over

<img src="assets/screenshots/03-model-router-fallback.png" alt="Model router and fallback">

Rank available provider/model candidates and apply a configured fallback chain when a provider is unavailable or rate-limited.

</td>
<td width="50%" valign="top">

🧪 Diagnose Codex connections

<img src="assets/screenshots/05-codex-diagnostics.png" alt="Codex diagnostics">

Run connection and Responses API diagnostics separately from the normal one-click workflow.

</td>
</tr>
</table>

🖥 Restricted local system agent

<p align="center">
  <img src="assets/screenshots/04-local-system-agent.png" alt="Restricted local system agent" width="88%">
</p>

The local system agent is designed around defined/allowlisted operations. The normal agent surface intentionally does not expose unrestricted PowerShell, arbitrary Registry writes, arbitrary file deletion, or service shutdown.

🔐 Local privacy controls

<p align="center">
  <img src="assets/screenshots/07-settings-privacy.png" alt="Privacy and router settings" width="88%">
</p>

The current v1.0.9 UI identifies Windows DPAPI / CurrentUser for provider credential storage and states that prompt, message, and API-key contents are not written to local logs.

These statements describe the current product behavior/UI and are not a formal independent security audit.

60-second quick start

Download MMG-AI-Router-v1.0.9.exe from the latest release.

Launch MMG AI Router on Windows.

Open Providers and add the provider credentials you want to use.

Open One-Click Connect.

Connect the supported Codex / ChatGPT Desktop and/or Claude Code Desktop workflow.

Run the built-in bridge/connection test.

Open your AI coding client and use the configured local routing path.

Existing client settings are designed to be backed up before MMG rewrites supported connection settings.

Architecture at a glance

<p align="center">
  <img src="assets/diagrams/architecture.png" alt="MMG AI Router architecture" width="92%">
</p>

MMG AI Router is Windows-first and local-first. The control shell, provider configuration, local routing layer, fallback behavior, diagnostics, and local agent are managed from the same desktop interface.

Release trust & download verification

The public repository is intentionally a distribution and documentation repository. Proprietary application source and private licensing infrastructure are kept outside the public repo.

Current public-release rules:

Application binaries are distributed through GitHub Releases, not committed as normal repository files.

Every published binary gets a matching SHA-256 digest.

API keys, private signing material, .env files, PFX/P12 files, and production credentials must never be committed.

A release is not described as “signed” unless real Authenticode signing and trusted timestamping have been applied.

Verify v1.0.9

Expected SHA-256:

16f6b14dfed96c985a99e643d7215f2fa7da40b11515494f0e41d259971f56f8

PowerShell:

Get-FileHash ".\MMG-AI-Router-v1.0.9.exe" -Algorithm SHA256

You can also download the published checksum file:

SHA256SUMS.txt

Windows SmartScreen note: the current v1.0.9 public build is not Authenticode-signed, so Windows may display an “Unknown publisher” or SmartScreen warning. Verify the SHA-256 before running the file.

Read more:

Verify a download

Security architecture

Release policy

Privacy notes

Security policy

Who is this for?

MMG AI Router is aimed at Windows users who:

use more than one AI coding client or provider;

want a local routing layer without repeatedly editing config files;

want provider/model fallback from a desktop UI;

need a simpler way to test local client-to-router connections;

prefer a guided Windows application over a CLI-first workflow.

It is not positioned as a cloud-scale multi-tenant AI gateway. The focus is a practical, local Windows control plane.

Positioning

Local LLM gateways, multi-provider routers, and coding-client gateways already exist. MMG AI Router does not claim to be the world's first AI router.

Its differentiating product combination is:

Windows-first desktop shell + one-click supported client connection + local provider management + model fallback + diagnostics + restricted local agent + device-based licensing.

See the public landscape research notes.

🔑 Trial & licensing

MMG AI Router includes a 4-day trial.

Time-limited licenses are currently available for:

30 / 60 / 90 / 365 days

<a href="mailto:mmgaiautomation@gmail.com?subject=MMG%20AI%20Router%20License%20Request"><strong>🔑 Request a license</strong></a>

Contact: mmgaiautomation@gmail.com

<p align="center">
  <img src="assets/screenshots/06-license-trial.png" alt="MMG AI Router trial and licensing" width="78%">
</p>

Feedback, bugs & feature requests

If something breaks, a provider stops working, or a workflow is unclear, open an Issue and include:

MMG AI Router version;

Windows version;

which client/provider you were using;

the exact error message;

whether the bridge/connection test passed.

Open an issue

If MMG AI Router saves you time configuring AI clients on Windows, consider starring the repository. It helps other Windows AI users discover the project.

License & third-party software

The MMG wrapper, branding, and original distribution are proprietary unless a file says otherwise. Third-party components and services remain subject to their own licenses and terms.

See:

LICENSE.md

THIRD_PARTY_NOTICES.md

<p align="center">
  <img src="assets/brand/mmg-horizontal-white.png" alt="MMG AI & Automation Yazılım" width="58%">
</p>

<p align="center">
  <strong>ONE EXE. ONE CONTROL PLANE. MANY AI PROVIDERS.</strong>
</p>
