# Zsh

Install and setup the bare dependecies:

```bash
sudo zypper install -y zsh fzf ripgrep xclip 
sudo usermod -s /bin/zsh $USER
```

Zinit is used as plugin manager (to manage zsh-specific dependencies):

```bash
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

Skin setting up the additional annexes with `n`.

Finally add some config to `~/.zshrc` with:

```
cat >> ~/.zshrc << EOF
PURE_PROMPT_SYMBOL="$"

zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma-continuum/fast-syntax-highlighting \
                zsh-users/zsh-completions \
                zdharma-continuum/history-search-multi-word \
    pick"async.zsh" src"pure.zsh" \
                sindresorhus/pure

zinit wait lucid for \
        OMZ::lib/git.zsh \
  atload"unalias grv" \
        OMZ::plugins/git/git.plugin.zsh

# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
#zinit ice from"gh-r" as"program"
#zinit load junegunn/fzf-bin

# Handle completions without loading any plugin, see "clist" command.
# This one is to be ran just once, in interactive session.
zinit creinstall %HOME/my_completions

# This makes Makefile target completions bearable
zstyle ':completion:*:make:*:targets' call-command true # outputs all possible results for make targets
zstyle ':completion:*:make:*' tag-order targets
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%B%d%b'

# For GNU ls (the binaries can be gls, gdircolors, e.g. on OS X when installing the
# coreutils package from Homebrew; you can also use https://github.com/ogham/exa)
zinit ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zinit light trapd00r/LS_COLORS

alias m=make

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
EOF
```

Some interesting commands:

* `e`: editor
* `ide`: open in ide
* `vi`: open in terminal editor
* `o`: xdg-open
* `f`: fzf find
* `x`: dtrx
* `m`: make
* git shortcut aliasses (`gp`, `gl`, `gco`, `gm`, etc.)
* simulate pbcopy and pbpaste


### TODO

alias "c=xclip"
alias "v=xclip -o"
alias "pbcopy=xclip"
alias "pbpaste=xclip -o"

understand history better, and why it seems to not all come to the same place

quick directory jumping with fuzzy something
