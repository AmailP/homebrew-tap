# AmailP Homebrew Tap

Personal [Homebrew](https://brew.sh) tap.

## Install

```sh
brew install --cask amailp/tap/try-omarchy
```

Recent Homebrew versions ask you to trust third-party taps first:

```sh
brew trust amailp/tap
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
| [`prismlauncher-parental`](Casks/prismlauncher-parental.rb) | Custom build of [Prism Launcher](https://github.com/AmailP/PrismLauncher) from the `parental` branch (Apple Silicon, macOS 12+) |

## Prism Launcher (parental fork)

```sh
brew install --cask amailp/tap/prismlauncher-parental
```

The bundle is ad-hoc signed, not notarized. Homebrew 7 and later no longer
quarantines cask downloads, so the app opens normally. On older Homebrew add
`--no-quarantine` to the install command, or macOS will refuse to open it.

It installs as `PrismLauncher.app`, so it can live next to the upstream
`prismlauncher` cask (`Prism Launcher.app`). Both share the same data folder in
`~/Library/Application Support/PrismLauncher`, so do not run them at once.

## Uninstall

```sh
brew uninstall --cask try-omarchy
```

Try Omarchy keeps its VM disk in `~/Library/Application Support/Try Omarchy`
so your Linux install survives reinstalls. To remove everything, use zap:

```sh
brew uninstall --cask --zap try-omarchy
```
