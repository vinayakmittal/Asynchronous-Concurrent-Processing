./producer -j 1 -o 3 -p hw3cs3506g07 infile outfile_enc -c
./producer -j 3 -o 3 infile outfile_comp -c
./producer -j 5 -o 3 -a 1 infile outfile_md5 -c
./producer -j 5 -o 3 -a 2 infile outfile_sha1 -c
./producer -j 2 -o 3 -p hw3cs3506g07 outfile_enc outfile_dec -c
./producer -j 4 -o 3 outfile_comp outfile_decomp -c

ls -lrt infile outfile_enc outfile_comp outfile_md5 outfile_sha1 outfile_dec outfile_decomp
