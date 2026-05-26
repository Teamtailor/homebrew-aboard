# homebrew-aboard

Homebrew tap for [`abrd`](https://github.com/Teamtailor/aboard-cli) — the Aboard agent CLI.

## Install

```sh
brew tap Teamtailor/aboard
brew install abrd
```

`brew upgrade abrd` to pick up new versions.

## Platforms

- macOS (Apple Silicon)
- Linux (x86_64)

Windows users: download the `.exe` directly from a [release](https://github.com/Teamtailor/homebrew-aboard/releases).

## How this tap is maintained

`Formula/abrd.rb` and the release tarballs are both regenerated automatically by the [release workflow](https://github.com/Teamtailor/aboard-cli/blob/main/.github/workflows/release.yml) in `Teamtailor/aboard-cli` whenever a `v*` tag is pushed there. Do not hand-edit the formula — your changes will be overwritten on the next release.

Source code, issues, and contributions: <https://github.com/Teamtailor/aboard-cli>.
