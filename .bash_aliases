alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'
alias ..6='cd ../../../../../../'
alias ..7='cd ../../../../../../../'
alias ..8='cd ../../../../../../../../'
alias ..9='cd ../../../../../../../../../'
alias nf='find . -name'
function goto() { 
    _FN=$(qf -d -p -o)
    if [ -n "$_FN" ]; then
        cd $_FN
    fi
    unset _FN
}

alias gadd="git status --short | qf -m -f 'git add {2}'"

# To easily kill processes
alias qkill="ps aux | qf -f 'kill -9 {2}'"

function up() {
    _FN=$(echo $PWD | awk -F"/" '{for(i=2; i <NF; i++){base = sprintf("%s/%s", base, $i); print base}}' | qf -o -f "{1}")
    if [ -n "$_FN" ]; then
        cd $_FN
    fi
    unset _FN
}

alias open=gnome-open
alias tl="todo.sh list"
function hist() {
    tac ~/.bash_history | awk '!c[$0] { print $0; c[$0] = 1}' | hf -s -e
}

