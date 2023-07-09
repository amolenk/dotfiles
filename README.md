# Repo for reinstalling macOS

## Install Apple Development Tools (Git)

```bash
xcode-select --install
```

## Terminal

Install oh-my-zsh:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Run deployment scripts

Clone this repo:

```bash
git clone https://github.com/amolenk/dotfiles.git
```

Install Homebrew and Homebrew-installable packages:

```bash
./homebrew.sh <home|work>
```

Install Mac App Store apps:

```bash
./MapAppStore.sh <home|work>
```
