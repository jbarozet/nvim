# My Neovim Configuration

## Installation

### Backup your existing installation

Make a backup of your current Neovim files:

Required

```shell
mv ~/.config/nvim{,.bak}
```

Optional but recommended

```shell
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Clone the repo

```shell
git clone https://github.com/jbarozet/nvim.git
```

### Start Neovim

```shell
nvim
```

## Markdown

markdownlint is the Markdown linter and comes with predefined rules.

To provide a custom configuration, you simply put 2 files at the root directory of your project:

- a file called `.marksman.toml` - which indicates the root of the repo
- a file called `.markdownlint.json` - that contains markdownlint config for this repo

Examples are given in extras folder.
