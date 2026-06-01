# homebrew-tap

🍺 My personal Homebrew tap — a collection of formulae not (yet) in the core Homebrew repos.

## Usage

Add the tap once:

```bash
brew tap johan-stph/pureclip
```

Then install any formula from it:

```bash
brew install <formula>
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| [pureclip2](Formula/pureclip2.rb) | Capturing protein-RNA interaction footprints from single-nucleotide CLIP-seq data ([fork](https://github.com/johan-stph/PureCLIP)) |

## Updating a Formula

1. Update `url` in the relevant `Formula/<name>.rb` to point to the new release tarball.
2. Run `shasum -a 256 <tarball>` and paste the result into `sha256`.
3. Commit and push — users will get the update on their next `brew upgrade`.
