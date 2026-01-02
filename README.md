# homebrew-git-chronoscope

Homebrew tap for [git-chronoscope](https://github.com/southpawriter02/git-chronoscope) - a command-line tool that generates time-lapse videos or animated GIFs showing the evolution of a Git repository's codebase.

## Installation

```bash
# Add the tap
brew tap southpawriter02/git-chronoscope

# Install git-chronoscope
brew install git-chronoscope
```

## Prerequisites

The formula will automatically install:
- Python 3.11
- FFmpeg (required for video encoding)
- Git

## Usage

After installation, you can use the `git-chronoscope` command:

```bash
# Generate a time-lapse video
git-chronoscope /path/to/repo output.mp4

# Or use the web interface
git-chronoscope --gui
```

For more detailed usage information, see the [main repository](https://github.com/southpawriter02/git-chronoscope).

## Updating

```bash
brew update
brew upgrade git-chronoscope
```

## Uninstalling

```bash
brew uninstall git-chronoscope
brew untap southpawriter02/git-chronoscope
```

## About

This tap repository contains the Homebrew formula for easy installation of git-chronoscope on macOS and Linux systems.