# homebrew-tap

Homebrew tap for [semitechnological](https://github.com/semitechnological) tools.

## Install

```sh
brew tap semitechnological/tap
```

## Formulae

| Formula | Description |
|---------|-------------|
| [inauguration](Formula/inauguration.rb) | Swift developer toolchain pipeline CLI |
| [wax](Formula/wax.rb) | Fast Homebrew-compatible package manager |

### inauguration

For installs pulled from GitHub releases, **[wax](https://github.com/semitechnological/wax)** is usually faster than cloning formula sources with Homebrew:

```sh
wax tap semitechnological/tap
wax install inauguration
```

Homebrew fallback: `brew install inauguration` after `brew tap semitechnological/tap`.

Clone-based builds and the release installer script live in the upstream [inauguration README](https://github.com/semitechnological/inauguration/blob/master/README.md#install-cli-pick-one).
