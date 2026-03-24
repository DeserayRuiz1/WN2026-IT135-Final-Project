# Linux Lab Toolkit

A collection of Bash scripts built for IT135 Introduction to Linux at North Seattle College (WN26).  
Packaged in Docker so it runs identically anywhere — local machine, GitHub Codespace, or any Linux environment.

## What's inside

| Script | What it does |
|---|---|
| `menu.sh` | Startup menu — runs automatically when the container launches |
| `screensaver.sh` | Terminal ambiance launcher — Matrix, Rain, Pipes, Starfield |
| `docker-setup.sh` | Docker project scaffolding tool — creates folder structure, generates Dockerfile, chmods scripts |

## How to run

**Option 1 — Docker (recommended, runs anywhere):**
```bash
docker build -t linux-lab-toolkit .
docker run -it linux-lab-toolkit
```

**Option 2 — Run directly in a Linux terminal or GitHub Codespace:**
```bash
chmod +x menu.sh
bash menu.sh
```

## Requirements

- Docker (for containerized run), OR
- Bash + Git (for direct run — needed by screensaver.sh to pull animations)

## Credits

Terminal screensaver animations are sourced from the open source project  
**attogram/bash-screensavers** — https://github.com/attogram/bash-screensavers  
Licensed under the MIT License. All animation code belongs to the original authors.  
The launcher script (`screensaver.sh`), menu system, and `docker-setup.sh` are original work.

## About

Built as a final project for IT135 Introduction to Linux — North Seattle College, Winter 2026.  
Demonstrates: `bash`, `case`, `if/then`, `for` loops, `grep`, `awk`, `find`, `chmod`, `read`, variables, and Docker containerization.
