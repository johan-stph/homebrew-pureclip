# homebrew-pureclip

🍺 Homebrew tap for [PureCLIP](https://github.com/skrakau/PureCLIP) — accurate detection of RBP interaction sites from eCLIP-seq data.

## Install

```bash
brew tap johan-stph/pureclip
brew install pureclip
```

## Update a release

1. Update `url` in `Formula/pureclip.rb` to point to the new tarball.
2. Run `sha256sum <tarball>` (or `shasum -a 256`) and paste the result into `sha256`.
3. Commit and push.
