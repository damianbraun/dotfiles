#!/usr/bin/env python
import os

pwd = os.getcwd()+'/'
home = os.environ['HOME']+'/'
q = ''

files = [
        ('vimrc', home+'.vimrc'),
        ('NERDTreeBookmarks', home+'.NERDTreeBookmarks'),
        ('i3status.conf', home+'.i3status.conf'),
        ('i3config', home+'.i3/config'),
        ('beetsconfig', home+'.config/beets/config.yaml'),
        ('bashrc', home+'.bashrc'),
        ('gitconfig', home+'.gitconfig')
    ]

for file in files:
    print "%s%s -> %s" % (pwd,file[0],file[1])
    while len(q)==0: 
        q = raw_input('should i symlink it? (y/n): ')
    if q == 'y' or q == 'Y':
        command = 'ln -s %s %s' % (pwd+file[0], file[1])
        print command+'\n'
        os.system(command)
    q=''
