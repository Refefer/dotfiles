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
_FN="/tmp/qf.$$"
qf -d -s $_FN
if [ -f $_FN ]; then
    cd `cat $_FN`
    rm $_FN
fi
unset _FN
}
