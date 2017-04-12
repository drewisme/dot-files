if hash git >/dev/null; then
    git config --global alias.st status
    git config --global alias.paul '!git pull && git submodule update --init --recursive'
    git config --global alias.ls 'log --pretty=format:"%Cgreen%ad %Cblue%<|(25,trunc)%cn %C(yellow)%h %Creset%s %Cred%d" --decorate --date=local --date=short'
    git config --global alias.ll 'log --pretty=format:"%Cgreen%ad %Cblue%<|(25,trunc)%cn %C(yellow)%h %Creset%s %Cred%d " --decorate  --numstat --date=local --date=short'
fi

if [ -f ~/Repositories/dot-files/.git-completion.bash ]; then
    source ~/Repositories/dot-files/.git-completion.bash
fi
