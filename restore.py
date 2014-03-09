#!/usr/bin/env python
import os

PWD = os.getcwd()+'/'
HOME = os.environ['HOME']+'/'
q = ''

files = [
        ('vimrc', HOME+'.vimrc'),
        ('NERDTreeBookmarks', HOME+'.NERDTreeBookmarks'),
        ('i3status.conf', HOME+'.i3status.conf'),
        ('i3config', HOME+'.i3/config'),
        ('beetsconfig', HOME+'.config/beets/config.yaml'),
        ('bashrc', HOME+'.bashrc'),
        ('gitconfig', HOME+'.gitconfig'),
        ('yaourtrc', HOME+'.yaourtrc'),
        ('zshrc', HOME+'.zshrc'),
        ('aliases', HOME+'.aliases')
        ]

for file in files:
    print "%s%s -> %s" % (PWD, file[0], file[1])
    while len(q) == 0:
        q = raw_input('should i symlink it? (y/n): ')
    if q == 'y' or q == 'Y':
        command = 'ln -s %s %s' % (PWD+file[0], file[1])
        print command+'\n'
        os.system(command)
    q = ''
