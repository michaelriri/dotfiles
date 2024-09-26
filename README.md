Create `~/.config/chezmoi/chezmoi.toml` and add machine-to-machine differences in config file:

```toml
[data]
    email = "me@home.org" # used for .gitconfig
```

To install dotfiles on a new machine:

```
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply michaelriri
```

```
$ install-deps
```

VSCODE looks for settings in `$HOME/Library/Application\ Support/Code/User/settings.json`. Create a symlink to the settings in `$HOME`:

```
ln -s $HOME/.config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
```
