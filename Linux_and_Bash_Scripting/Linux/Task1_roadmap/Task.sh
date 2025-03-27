#!/bin/bash
cd "/home/ehab/Training_Tasks/Linux_and_Bash_Scripting/Linux/Task1_roadmap"
rm -rf sample_directory
mkdir sample_directory
cd sample_directory
touch file1.txt file2.txt
echo "this is a sample error text" > file1.txt
echo "Another sample text with error" > file2.txt
grep "error" *.txt > error_log.txt
sed -i "s/sample/test/g" *.txt
find "/home/ehab/Training_Tasks/Linux_and_Bash_Scripting/Linux/Task1_roadmap/sample_directory" -type f -mtime -7  -ls
tar -cvf "../sample_directory.tar" *