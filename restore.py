#!/usr/bin/env python
import os

PWD = os.getcwd()+'/'
HOME = os.environ['HOME']+'/'
q = ''

files = [
        ('vimrc', '~/.vimrc'),
        ('NERDTreeBookmarks', '~/.NERDTreeBookmarks'),
        ('i3status.conf', '~/.i3status.conf'),
        ('i3config', '~/.i3/config'),
        ('beetsconfig', '~/.config/beets/config.yaml'),
        ('bashrc', '~/.bashrc'),
        ('gitconfig', '~/.gitconfig'),
        ('yaourtrc', '~/.yaourtrc'),
        ('zshrc', '~/.zshrc'),
        ('aliases', '~/.aliases'),
        ('tmux.conf', '~/.tmux.conf')
        ]

for file in files:
    sendplace = os.path.expanduser(file[1])
    print "%s%s -> %s" % (PWD, file[0], sendplace)
    while len(q) == 0:
        q = raw_input('should i symlink it? (y/n): ')
    if q == 'y' or q == 'Y':
        command = 'ln -s %s %s' % (PWD+file[0], sendplace)
        print command+'\n'
        os.system(command)
    q = ''
