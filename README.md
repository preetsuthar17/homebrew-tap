# preetsuthar17/homebrew-tap

Homebrew tap for preview builds of `knook`.

## Install

```bash
brew tap preetsuthar17/tap
brew install --cask knook
```

## First Launch

Current preview builds are unsigned and not notarized yet.

If macOS says `knook` is damaged on first launch:

```bash
xattr -dr com.apple.quarantine /Applications/knook.app
open /Applications/knook.app
```
