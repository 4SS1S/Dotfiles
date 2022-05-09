#!/bin/bash
git clone git://github.com/jiangmiao/auto-pairs.git

if ! [-x "$(command -v node)"]; then
    echo "Error: auto-pairs is not installed." >&2
    echo "      Installing nodejs." >&2
    curl -sL install-node.vercel.app/lts | bash
fi

git clone https://github.com/neoclide/coc.nvim/
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/prettier/vim-prettier.git
git clone https://github.com/ryanoasis/vim-devicons
git clone https://github.com/ntpeters/vim-better-whitespace
git clone https://github.com/junegunn/vim-plug
git clone https://github.com/junegunn/vim-plug
git clone https://github.com/jistr/vim-nerdtree-tabs
git clone https://github.com/ap/vim-css-color.git
git clone https://github.com/Shougo/neobundle.vim
git clone https://github.com/davidhalter/jedi-vim
git clone https://draculatheme.com/vim
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/junegunn/vim-plug
git clone https://github.com/junegunn/vim-plug
git clone https://github.com/airblade/vim-gitgutter.git