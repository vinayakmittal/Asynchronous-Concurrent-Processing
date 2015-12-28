echo 'Testing wrong cipher key case for decryption'
./producer -j 1 -o 1 -p hw3cs3506g07 infile outfile_1 -c
./producer -j 2 -o 2 -p hw3ee4507g08 outfile_1 outfile_2 -c

sleep 5

clear 

echo 'Testing invalid combination of arguments '
./producer -j 1 -o 1  infile outfile_3 -c
./producer -j
./producer -j 5 -o 1 infile outfile_4 -c

echo ""
echo 'Testing invalid argumets'
echo 'When infile and outfile are same'

./producer -j 1 -o 1 -p hw3cs3506g07 infile infile -c

echo ''
echo 'When password length is invalid'
./producer -j 1 -o 1 -p hw3c infile outfile_1 -c


