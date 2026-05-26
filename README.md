```
       _              _
   ___| |__  _ __ __| |
  / _ \ '_ \| '__/ _` |   the aboard agent cli
 |  __/ |_) | | | (_| |   via homebrew
  \___|_.__/|_|  \__,_|
```

# homebrew-aboard

Homebrew tap for **`abrd`** — the [Aboard](https://aboardhr.com) agent CLI.

Give AI assistants (Claude, Cursor, ChatGPT, …) read/write access to your Aboard HR data, on your behalf, from your terminal.

## Install

```sh
brew tap Teamtailor/aboard
brew install abrd
```

Then authenticate:

```sh
abrd auth login
```

That opens `app.aboardhr.com/settings/cli-tokens/authorize` in your browser. Approve, and the CLI catches the token on a loopback callback.

To update later:

```sh
brew upgrade abrd
```

## What `abrd` does

A single static binary — no Node, no Python, no build tools — that:

- Talks to `api.aboardhr.com` with a personal access token scoped to *your* account
- Surfaces 1-on-1s, direct reports, agenda templates, skills, performance reviews, time off, and holidays as structured JSON
- Plays nicely with agent skills so a coding assistant can use `abrd …` to look up *"who's on PTO next week"*, *"draft an agenda for my next 1:1 with X"*, *"summarise my team's last review cycle"* — and always stops to confirm before writes

Pair it with the [aboard agent skill](https://github.com/Teamtailor/aboard-skills) for the fastest setup — a single prompt that installs CLI, auth, and skill.

## Platforms

|  OS                  | Architecture | Install                |
| -------------------- | ------------ | ---------------------- |
|  macOS               | Apple silicon | `brew install abrd`   |
|  Linux               | x86_64        | `brew install abrd`   |
|  Windows             | x86_64        | grab the `.exe` from [Releases](https://github.com/Teamtailor/homebrew-aboard/releases) |

## How this tap is maintained

```
    aboard-cli (tag v*)
           │
           ▼
   .github/workflows/release.yml
           │
           ├──► builds tarballs (linux-amd64, darwin-arm64, windows-amd64)
           ├──► publishes them to homebrew-aboard/releases
           └──► regenerates Formula/abrd.rb pointing at the new release
```

`Formula/abrd.rb` and the release tarballs are both regenerated automatically. **Do not hand-edit the formula** — your changes will be overwritten on the next release.

## Issues & feedback

Open an issue on this repo. For anything Aboard-product-related, ping us in the usual channels.
