# My Neovim setup

This repository contains my Neovim setup which currently has an issue when opening .cpp files.

## Contents

- `init.vim`: Configuration file for Neovim.
- `plugged/`: Directory containing Vim plugins.
- `autoload/`: Directory containing autoloaded Vim scripts.

## Problem description

When opening a .cpp file, I encounter following error: "Error detected while processing BufReadPost Autocommands for "*":
Error executing lua callback: ...brew/Cellar/neovim/0.9.5/share/nvim/runtime/filetype.lua:24: Error executing lua: ...brew/Cellar/ne
ovim/0.9.5/share/nvim/runtime/filetype.lua:25: BufReadPost Autocommands for "*"..FileType Autocommands for "cpp"..function <SNR>18_v
im_lsp_load_or_suggest[105]..User Autocommands for "lsp_setup"..function lsp_settings#register_server, line 6: Vim(return):E117: Unk
nown function: lsp#register_server
stack traceback:
        [C]: in function 'nvim_cmd'
        ...brew/Cellar/neovim/0.9.5/share/nvim/runtime/filetype.lua:25: in function <...brew/Cellar/neovim/0.9.5/share/nvim/runtime/
filetype.lua:24>
        [C]: in function 'nvim_buf_call'
        ...brew/Cellar/neovim/0.9.5/share/nvim/runtime/filetype.lua:24: in function <...brew/Cellar/neovim/0.9.5/share/nvim/runtime/
filetype.lua:10>
stack traceback:
        [C]: in function 'nvim_buf_call'
        ...brew/Cellar/neovim/0.9.5/share/nvim/runtime/filetype.lua:24: in function <...brew/Cellar/neovim/0.9.5/share/nvim/runtime/
filetype.lua:10>
Press ENTER or type command to continue"

Any help would be appreciated!


