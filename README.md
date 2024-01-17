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

## Markdown Support

markdownlint is the Markdown linter and comes with predefined rules.

To provide a custom configuration, you simply put 2 files at the root directory of your project:

- a file called `.marksman.toml` - which indicates the root of the repo
- a file called `.markdownlint.json` - that contains markdownlint config for this repo

Examples are given in extras folder.

## Python Support

We will be using **flake8**, a commonly used linter for Python. flake8 is used to enforce a particular style for your code.
**Flake8** supports storing its configuration in your project in one of `setup.cfg`, `tox.ini`, or `.flake8`.
An example of `.flake8` configuration file is given in the **extras** folder.
