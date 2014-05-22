export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export LANG=ja_JP.UTF-8

alias grep='grep --color'
alias vi='vim'
alias vmd='/Applications/VMD\ 1.9.1.app/Contents/MacOS/startup.command'

function vmdd(){
    vmd -dcd $1.dcd -psf $1.psf
}

PATH=$PATH:/Users/takagi/my_scripts

#export $PATH

#sshfs -p 22666 takagi@130.54.51.3:/home/takagi mnt/fold/
if [ -e ~/.vimrc ]; then
    echo "exist .vimrc"
else
    echo "create .vimrc"
    ln -sf ~/dot_files/.vimrc ~/.vimrc
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi



