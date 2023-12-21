#!/bin/bash

#example 1
touch file.txt
chmod 744 file.txt
#endexample

#example 2
chmod a+x file.txt
#endexample

#example 3
chmod go-x file.txt
#endexample

#example 4
chmod 600 file.txt
#endexample

#example 5
mkdir dir
chmod 666 dir
touch dir/file.txt
#endexample

#example 6
touch dir/file1.txt dir/file2.txt
chmod 766 dir/*
#endexample

#example 7
umask 027
#endexample

#example 8
umask 077
umask 022
#endexample

#example 9
echo 'ls /home/student' > script.sh
chmod 741 script.sh
./script.sh
chmod +x script.sh
#endexample

#example 10
mkdir ~/bin
mv script.sh ~/bin
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
source ~/.bashrc
#endexample