# secure-base

This repository defines a lightweight and secure Docker base image used in containerized projects.  
The image is built on top of `ubuntu:20.04` with essential packages like `python3` and `pip` pre-installed.

The goal is to maintain a clean, patched, and reusable base layer — updated weekly via GitHub Actions.

---

##  What’s in the Image

- Based on: `ubuntu:20.04`
- Installs:  
  - `python3`  
  - `pip3`
- Weekly updates: applies latest security patches and cleans up unused files
- Published to: GitHub Container Registry (GHCR)

---

##  Image Tags

Images are pushed to:  
`ghcr.io/swalia-proj/secure-base`

Tags:
- `latest`
- GitHub `run_id` for traceable builds

---

##  How to Build Locally

```bash
git clone https://github.com/swalia-proj/secure-base.git
cd secure-base
docker build -t swalia-proj/secure-base:local .
````

---

## ⚙ CI/CD – Image Rebuild Workflow

A GitHub Actions workflow (`patch-rebuild-secure-base.yml`) rebuilds the image:

*  Weekly: Every Monday at 2 AM UTC
*  Manual: via "Run workflow" in the Actions tab

This ensures the image stays current with upstream patches.

> Requires a `GHCR_PAT` secret with `write:packages` scope to push to GHCR.

---

##  File Structure

```
.
├── Dockerfile
├── .github/
│   └── workflows/
│       └── patch-rebuild-secure-base.yml
└── README.md
```

---

##  Why This Matters

Using a regularly patched base image helps avoid known vulnerabilities before they reach production. It also creates a stable starting point for app containers, especially in multi-service stacks.

---

## Author

**Sonia Walia**
 [soniawalia.sw@gmail.com](mailto:soniawalia.sw@gmail.com)
