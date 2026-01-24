#! /bin/bash
#
#   * install to ~/.emacs.d/
#
#   NOTE this script uses `rsync`, but not `rsync --delete` ...
#

if [[ "$1" != "-f" ]]
then
    rsync -avrn --exclude=install.sh --exclude=README.md --exclude=.git ./ $HOME/.emacs.d/
    echo
    echo "warning: NOTHING DONE"
    echo "use ${0##*/} -f to really install into $HOME/.emacs.d/"
    echo
    exit 1
fi

if [[ ! -e init.el ]]
then
    echo "error: files not found"
    echo "please chdir to source directory"
    exit 1
fi

mkdir -p $HOME/.emacs.d
rsync -avr --exclude=install.sh --exclude=README.md --exclude=.git ./ $HOME/.emacs.d/

if [[ -e $HOME/.emacs ]]
then
    echo
    echo "warning: you should rm ~/.emacs"
    echo "because we have ~/.emacs.d/init.el"
    echo
fi

# EOB
