
Create `~/.config/chezmoi/chezmoi.toml` and add machine-to-machine differences in config file:

```
$ mkdir -p ~/.config/chezmoi
$ ~/.config/chezmoi/chezmoi.toml
```

```toml
[data]
    email = "me@home.org" # used for .gitconfig
```

To install dotfiles on a new machine:

```
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --ssh --apply michaelriri
```

```
$ install-deps
```

Create a symlink to the settings in `$HOME`, for vscode:

```
# mac
ln -s $HOME/.config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
# ubuntu
ln -s $HOME/.config/vscode/settings.json $HOME/.config/Code/User/settings.json
```