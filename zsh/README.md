# Zsh

    sudo apt-get install -y zsh fzf gradle-completion ripgrep dtrx xclip 
    sudo usermod -s /bin/zsh $USER


Then I use Zinit as my plugin manager

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"



* e: editor
* ide: open in ide
* vi: open in terminal editor
* o: xdg-open
* f: fzf find
* x: dtrx
* git shortcut aliasses
* simulate pbcopy and pbpaste

alias "c=xclip"
alias "v=xclip -o"
alias "pbcopy=xclip"
alias "pbpaste=xclip -o"

ripgrep 

understand history better, and why it seems to not all come to the same place

quick directory jumping with fuzzy something
