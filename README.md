```
       _                       _
   __ _| |__   ___   __ _ _ __ __| |
  / _` | '_ \ / _ \ / _` | '__/ _` |
 | (_| | |_) | (_) | (_| | | | (_| |
  \__,_|_.__/ \___/ \__,_|_|  \__,_|
```

**AI-powered HR — now in your terminal.**

`abrd` is the agent CLI for [Aboard](https://www.aboardhr.com), the AI-powered HR platform from Teamtailor. It gives Claude, Cursor, ChatGPT, and any other coding assistant a single command they can shell out to in order to read and write your Aboard HR data — on your behalf, with your token, never on a server you don't control.

```
  $ abrd whoami
  → emil@teamtailor.com

  $ abrd meetings list --next
  → Mon 10:00   1:1 with Lisa
  → Wed 14:00   1:1 with Anders

  $ abrd time-off --team
  → Anna   on PTO   Jun 3 – Jun 7
  → Ravi   on PTO   Jun 10
```

Pair `abrd` with the [aboard agent skill](https://github.com/Teamtailor/aboard-skills) and your assistant can answer *"draft an agenda for my next 1:1 with Lisa,"* *"who's on PTO next week,"* or *"summarise my team's last review cycle"* without leaving the chat.

## Install

```sh
brew tap Teamtailor/aboard
brew install abrd
abrd auth login
```

That last command opens `app.aboardhr.com/settings/cli-tokens/authorize` in your browser. Click **Authorize**, and you're done.

Update with `brew upgrade abrd`.

## What you get

- A **single static binary** — no Node, no Python, no build tools.
- **Personal-token auth** — your CLI talks to `api.aboardhr.com` as you, scoped to your account. No service accounts, no shared keys.
- **Local-only** — there's no Aboard-hosted MCP server in this loop. The binary lives on your machine; your agent shells out to it.
- **Read- and write-safe** — every write stops to confirm. The agent never sends an email or schedules a meeting without your nod.

Available on macOS (Apple silicon) and Linux (x86_64). Windows binaries available from the [releases](https://github.com/Teamtailor/homebrew-aboard/releases).

## Learn more

- **Aboard** — [www.aboardhr.com](https://www.aboardhr.com)
- **Agent skill** — [Teamtailor/aboard-skills](https://github.com/Teamtailor/aboard-skills)
- **Issues & feedback** — open one on this repo
