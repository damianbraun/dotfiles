#!/usr/bin/env python
import os
import sys

q = ''
COMMITMSG = 'updates'

if len(sys.argv)==1:
    print 'add files to update as arguments\nfor example\npython update.py filex file-y'

else:
    # git add part
    l=len(sys.argv)
    for i in range(l):
        command = 'git add '+sys.argv[i]
        while len(q)==0:
            q = raw_input('should i \''+command+'\'? (y/n): ')
        if i!=0 and q=='y' or q=='Y':
            os.system(command)
            print '\n'
        q = ''
    
    # git commit part
    while len(q)==0:
        q = raw_input('should i \'git commit -m '+COMMITMSG+'\'? (y/n): ')
    if q=='y' or q=='Y':
        q = raw_input('you can edit commit message (\'updates\' as default): ')
        if q=='':
            os.system('git commit -m \''+COMMITMSG+'\'')
            print '\n'
        else:
            os.system('git commit -m \''+q+'\'')
            print '\n'

    # git push part
    while len(q)==0:
        q = raw_input('should i \'git push\'? (y/n): ')
    if q=='y' or q=='Y':
        os.system('git push')
    
