# cd to the path of the front Finder window
cdf() {
        target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
        if [ "$target" != "" ]; then
                cd "$target"; pwd
        else
                echo 'No Finder window found' >&2
        fi
}
alias f='open -a Finder ./'
alias do='dayone'

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/nkalkounis/bin:$PATH

#Python working directories
export PY_WORK_DIR=/Users/nkalkounis/Dropbox/Development
export PY_ENV_DIR=/usr/local

#terminal colour enhancements
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
