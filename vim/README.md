# Vim, NeoVim and SpaceVim

Currently I mosty write code in IntelliJ. Occasionally I want a light weight editor that works from the commandline (maybe on remote environments).

Since I'm used to `vim` and it's modal editing, I prefer a vim-like editor for that. NeoVim does the trick. Install it with:

    sudo apt-get install -y git curl lua5.4 build-essential neovim
    cd /usr/local/src/
    git clone https://github.com/Shougo/vimproc.vim; cd vimproc.vim/
    cp -r autoload/vimproc* ~/.config/nvim/autoload/
    cp -r plugin ~/.config/nvim/
    cp -r lib ~/.config/nvim/
    ln -s /usr/bin/nvim /usr/local/bin/vim
    ln -s /usr/bin/nvim /usr/local/bin/vi

Now try out NeoVim with: `vi`

When using Emacs I found Spacemacs and it kind of got stuck. Using some keyboard friendly and self-documenting menus to get stuff done while you slowly work on remembering more shortcuts.
