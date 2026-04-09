# AGENTS.md

## Repo structure

Each container lives in its own top-level directory containing:
- `Dockerfile-<name>-<base>` — the Dockerfile (follow this naming pattern)
- `build.sh` — local build script
- `export.sh` — builds image and saves to `.tar` for manual upload to MikroTik routers
- `run.sh` — local run script
- `settings.json` — default config copied into the image
- `README.md` — bilingual (English/Magyar) docs

Current container: `transmission-minimal-arm64`

## Build requirements

All builds **must** specify `--platform=linux/arm64` (target is ARM64/v8 MikroTik routers). On x86 hosts, QEMU emulation is required. The CI workflow uses `docker/setup-qemu-action` and `docker buildx` for cross-compilation.

## CI / DockerHub

- Workflow: `.github/workflows/build-transmission-minimal-arm64.yml`
- Pushes to DockerHub as `zsoltiii23/transmission-minimal`
- Tags: `alpine-{datetime}`, `alpine-latest`, `latest`
- Triggers: push to `main`, weekly cron (Fridays), manual dispatch
- When adding a new container, create a matching workflow file

## Known quirks

- The env var `TRANSMISSON_DEFAULT_CONFIG` in the Dockerfile is an intentional typo (missing second S). It's used consistently—do not "fix" it without updating all references together (Dockerfile line 9, lines 16, 24–25).
- `export.sh` produces a `.tar` file for side-loading onto MikroTik routers that can't pull from registries. This file is untracked and there is no `.gitignore`—never commit it.
- `run.sh` does not mount `/config`, so settings reset on container restart. This is intentional for local testing only.
- No tests, lint, or typecheck exist in this repo.