#create a file
mkdir test0
touch test1
mkdir test2
touch test3
touch test4

#edit the size
echo "***" > test1
echo "" > test3
echo "*" > test4
echo "" > test5

#link file
ln test3 test5
ln -s test0 test6

#change the date
touch -a -m -t 202406012047 test0
touch -a -m -t 202406012146 test1
touch -a -m -t 202406012245 test2
touch -a -m -t 202406012344 test3
touch -a -m -t 202406012343 test4
touch -a -m -t 202406012344 test5
touch -a -m -ht 202406012220 test6

#change permission
chmod 715 test0
chmod 714 test1
chmod 504 test2
chmod 404 test3
chmod 641 test4
chmod 404 test5
chmod -h 777 test6

#zip
tar -cf exo2.tar * 

#delete
rmdir test0
rm test1
rmdir test2
rm test3
rm test4
rm test5
rm test6