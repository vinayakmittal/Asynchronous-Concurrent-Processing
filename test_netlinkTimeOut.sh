insmod sys_submitjob.ko
./producer -j 1 -o 1 -p hw3cs3506g07 infile outfile_1 -c &
./producer -j 1 -o 2 -p hw3cs3506g07 infile outfile_2 -c &
./producer -j 1 -o 2 -p hw3cs3506g07 infile outfile_3 -c & 
./producer -j 1 -o 1 -p hw3cs3506g07 infile outfile_4 -c &
./producer -j 6
./producer -j 7 $1
./producer -j 6
./producer -j 1 -o 2 -p hw3cs3506g07 infile outfile_5 -c &
./producer -j 1 -o 1 -p hw3cs3506g07 infile outfile_6 -c &
echo 'Going to sleep for 2 mins..'
sleep 3m
echo 'Module will now exit!'
rmmod sys_submitjob.ko
