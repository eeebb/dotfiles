# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# Ansible settings
# ANSIBLE=/opt/ansible
# ANSIBLE_BIN=$PATH:$ANSIBLE/bin
# PYTHON_PATH=$ANSIBLE/lib
# export PYTHONPATH=$PYTHON_PATH
# export ANSIBLE_LIBRARY=$ANSIBLE/library

# export PATH="$ANSIBLE_BIN:$VAGRANT:$PACKER:$VBOX:$VBOX64:$HOME/bin:$PATH"
# export PATH="$ANSIBLE_BIN:$VAGRANT:$VBOX:$HOME/bin:$PATH"

# Set Packer path
# PACKER="$HOME/../Apps/Packer-0.7.5"
# PACKER="$(cd "$PACKER" ; pwd)"

# # Set path to RunAsSystem 
# RAS="$HOME/../Apps/RunAsSystem"
# RAS="$(cd "$RAS" ; pwd)"
# # export PATH
# export PATH="$RAS:$PATH"

# bash and git
source ~/.bash_git
# export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '

#  Set dos home path
SH_HOME="$(cmd /c "cd %HOME% && chdir")"
SH_HOME=${SH_HOME::-1}

# Set VirtualBox path
VBOX="$HOME/../Apps/VirtualBox/app64"
VBOX="$(cd "$VBOX" ; pwd)"
export PATH="$VBOX:$PATH"
export VBOX_USER_HOME=${SH_HOME}"\\.vbox\.VirtualBox"
# Run VirtualBox and set path to VMs directory
function vbox() {
    cygstart $VBOX/../Portable-VirtualBox.exe && sleep 5
    cmd /c "VBoxManage setproperty machinefolder ${SH_HOME}\\.vbox\\VMs"
}

# Set .vagrant.d path
VAGRANT_HOME='~/../Apps/.data/.vagrant.d'
export VAGRANT_HOME="$VAGRANT_HOME"

# Set Vagrant bin path
VAGRANT="$HOME/../Apps/Vagrant/bin"
VAGRANT="$(cd "$VAGRANT" ; pwd)"
export PATH="$VAGRANT:$PATH"

# Set CygwinShim path
CYGWINSHIM="$HOME/../Apps/CygwinShim"
CYGWINSHIM="$(cd "$CYGWINSHIM" ; pwd)"
export PATH="$CYGWINSHIM:$PATH"

# Set NodeJS path
NODE="$HOME/../Apps/Node.js"
NODE="$(cd "$NODE" ; pwd)"
export PATH="$NODE:$PATH"
# Run npm using cmd instead of bash
alias npm="cmd /c npm.cmd"

# composer alias
alias composer="php /usr/bin/composer.phar"
alias deploy=./deploy.sh

# Path Length Checker
PATHLENGTHCHECKER="$HOME/../Apps/PathLengthChecker"
PATHLENGTHCHECKER="$(cd "$PATHLENGTHCHECKER" ; pwd)"
export PATH="$PATHLENGTHCHECKER:$PATH"
function lengthcheck() {
    MINLEN=260
    if [[ $2 ]]; then
        MINLEN=$2
    fi
    RESULT="$(PathLengthChecker RootDirectory="$1" MinLength=$MINLEN)"
        echo "Filenames with length over $MINLEN:"
        echo
        echo $RESULT
}
