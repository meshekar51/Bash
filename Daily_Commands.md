#!/bin/bash
#Detailes about the OS
uname -a

#Pointing working directory
PWD

#Change Directory
cd /app/folder

#change one directory backwords
cd ..

#change directory to root
cd /

#list directories and files # with hidden
ls -a
#last user sessions who logged in recently
last

#whoami check which user on the console
whoami

#DISK
df -h

#Memory
free -h

#CPU
nproc

#Memory & CPU live
top
htop

#CRUD operations # You can run it as one command which is usefull instead of multiple lines # R is recursive and it takes care of all sort of permissions deep level
mkdir -p /app/folder && touch /app/folder/dns.sh && chown -R ec2-user:ec2-user /app/folder && chmod 644 -R /app/folder

#OR 

mkdir -p /app/folder
touch /app/folder/dns.sh
chown -R ec2-user:ec2-user /app/folder
chmod 644 -R /app/folder


#read operations

cat /app/folder/dns.sh

#Update
#make sure you have directory exists: /app/folder/dns
cp /app/folder/dns.sh /app/folder/dns/dns.sh  # Keep existing copy
mv /app/folder/dns.sh /app/folder/dns/dns.sh  # cut and paste

#vi or vim would suggest to go for vim have some of the advanced editor
#vim used when we use for manual editing
vim dns.sh #or any file # note extention doesnt matter in Linux it reads the metadata not the extention

#sed used in shell scripting where we do automate the stuff
# -i is permenant changes if you want to precheck something using output then dont use -i
sed -i 's/old/new/g' filename # used to substitute data inside the file whcih is already existed.
sed -i 's/old/new/g' /app/folder/dns.sh
sed -i '1s/^/new_line_to_add\n/' /app/folder/dns.sh # add new line at the beginning of the file
sed '5d' filename.txt # delete line 5 from the file
sed '2,5d' filename.txt # delete line 2 to 5 from the file
sed '12,$d' filename.txt # delete line 12 to end of the file
sed '3i\new text' filename  # Insert text before line 3
sed '3a\new text' filename  # Insert text after line 3
# We have more advanced use of sed go through the documentations.

#grep used to search inside the files
grep "ERROR" /var/logs/log
grep -r "ERROR" /var/logs/  # recursive search
grep -i "error" /var/logs/log  # case insensitive
grep -A 5 "ERROR" /var/logs/log  # show 5 lines after the match

#or we can use grep after some commands for get more precise output - Here based on the pipe, grep takes the output from other command and performs the grep command on it 
ps aux | grep "process_name"
ps aux | grep "process_name" | grep -v "grep"
ps aux | grep "process_name" | grep -v "grep" | awk '{print $2}' # this will give only PID
ps aux | grep "process_name" | grep -v "grep" | awk '{print $2}' | xargs kill -9  # this will kill the process
cat /var/logs/log| grep "ERROR"

