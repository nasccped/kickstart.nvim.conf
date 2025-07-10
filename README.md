# kickstart.nvim config

Here's my personal configurations for 🇳 🇻 🇮 🇲 kickstart

> [!warning]
>
> I'm not the _'absolute'_ owner of this repository.
>
> It was cloned from [nvim-lua/kickstart.nvim] and modified it to my
> preferences!
>
> You can find the original README at `README.old.md` (dependencies
> as well).

[nvim-lua/kickstart.nvim]: https://github.com/nvim-lua/kickstart.nvim

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
>
> ---
>
> All the content bellow is just some additional info. Not so
> important...

<details> <summary> Changes that I've made </summary>

## Colors

### Default color

I've set **catpuccin-mocha** as my default colorscheme:

```lua
-- file path: lua/custom/configs/globals.lua
local function set_colorscheme()
  vim.cmd 'colorscheme catppuccin-mocha'
end

set_colorscheme()
```

You can disable it by removing this line the function call or
replacing the `catppuccin-mocha` by other one.

### Color override

I've also changed some catppuccin default colors to fit my
preferences. Here's the sample:

```lua
-- file path: lua/custom/plugins/colorscheme/catppuccin.lua
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    -- override here:
    color_overrides = {
      mocha = {
        base = '#000000',
        mantle = '#000000',
        crust = '#000000',
      },
    },
  },
}
```

The code above will fetch the catppuccin plugin + override the mocha
background to black. You can remove these lines if you don't want it.

## Keymaps

### Normal mode

- `<leader>` (space)
    - `n`: use the `N` letter to call _new_ related actions
        - `t`: create a new terminal buffer
    - `c`: use the `C` letter to call _close_ related actions
        - `b`: close the current buffer

</details>
