# AmailP Homebrew Tap

Personal [Homebrew](https://brew.sh) tap.

## Install

```sh
brew install --cask amailp/tap/try-omarchy
```

Or tap first, then install:

```sh
brew tap amailp/tap
brew install --cask try-omarchy
```

## Casks

| Cask | Description |
| ---- | ----------- |
| [`try-omarchy`](Casks/try-omarchy.rb) | [Omarchy](https://github.com/omacom/try-omarchy) Linux desktop in a virtual machine (Apple Silicon, macOS 15+) |

## Uninstall

```sh
brew uninstall --cask try-omarchy
```

Try Omarchy keeps its VM disk in `~/Library/Application Support/Try Omarchy`
so your Linux install survives reinstalls. To remove everything, use zap:

```sh
brew uninstall --cask --zap try-omarchy
```
