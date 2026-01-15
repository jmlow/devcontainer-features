# Custom Base Images

This directory contains custom Docker base images that pre-install commonly used tools from this repository's devcontainer features. Using these base images can significantly speed up devcontainer build times by avoiding redundant installations.

## Available Images

### `base/`

A general-purpose base image with pre-installed tools including:

- **Build toolchains**: build-essential, clang, libclang-dev, libreadline-dev
- **Search/CLI tools**: fd-find, fzf, ripgrep, tmux
- **Language tools**: luarocks

## Usage

### In a devcontainer.json

```json
{
  "image": "ghcr.io/jmlow/devcontainer-features/base:latest",
  "features": {
    // Add only the features NOT included in the base image
  }
}
```

### Building Locally

```bash
cd images/base
docker build -t devcontainer-base:local .
```

## Publishing

Images are automatically built and published to GHCR when changes are pushed to the `main` branch and the `images/` directory is modified. You can also manually trigger the workflow from the Actions tab.

## Relationship to Features

These base images are **separate from** the devcontainer features in `src/`. Features are composable scripts that run on top of any base image. These custom base images simply pre-bake some of those installations for faster builds when you know you'll always need certain tools.
