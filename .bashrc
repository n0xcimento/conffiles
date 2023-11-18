#------------------------------------------------
#                  my settings
#------------------------------------------------
PS1=' [\[\e[01;32m\]\u\[\e[00m\]@\[\e[01;32m\]\h \[\e[01;34m\]\W\[\e[00m\]]\$ '

alias apts='apt-cache search --names-only'
alias aptn='apt-cache pkgnames'
alias pypip='python3 -m pip'

tk () {

    key='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'
    
    if [ -n "$1" ]
    then
        sed -i "/key=/{
            s/ghp_[A-Za-z0-9]*/$1/
        }" "$HOME/.bashrc"
        
        # echo -n "$1" | xsel -b
    fi
    echo -n "$key" | xsel -b
}