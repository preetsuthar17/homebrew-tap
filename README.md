# preetsuthar17/homebrew-tap

Homebrew tap for preview builds of `knook`.

## Install

```bash
brew tap preetsuthar17/tap
brew install --cask --no-quarantine knook
```

## First Launch

Current preview builds are unsigned and not notarized yet.

If you already installed with quarantine enabled and macOS says `knook` is damaged:

```bash
xattr -dr com.apple.quarantine /Applications/knook.app
open /Applications/knook.app
```
