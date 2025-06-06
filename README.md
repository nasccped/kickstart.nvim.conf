# kickstart.nvim config

Here's my personal configurations for 🇳 🇻 🇮 🇲 kickstart

> [!warning]
>
> I'm not the _'absolute'_ owner of this repository.
>
> It was cloned from
> [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
> and modified to my preferences!
>
> You can find the original README at `README.old.md`
> (dependencies as well).

## Clone / install

Follow these steps go get this config on your computer:

1. Move your old configs (if it exists):

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clean your nvim folders:

```sh
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

3. Clone this repo to neovim config path + init it:

```sh
git clone --depth 1 https://github.com/nasccped/kickstart.nvim.conf ~/.config/nvim
# remove unnecessary git folder
rm -rf ~/.config/nvim/.git
nvim
```

> [!TIP]
>
> All commands above are targeted to unix-like systems. If you're at
> `Windows`, replace:
>
> - `mv` with `Move-Item`
> - `rm -rf` with `Remove-Item -Recurse -Force`
> - `~/.config/nvim` with `$env:LOCALAPPDATA\nvim`
> - `~/.local/share/nvim` with `$env:LOCALAPPDATA\nvim-data`
