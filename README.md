# post_process_time_avg
These are a few basic post processing routines. 

An MPI C++ implementation of the LBM solver generates generates a theta_p_\*.csv file, where \* denoes the time stamp. This csv file contains the angle (on the surface of the body, i.e., cylinder for the present case), pressure, drag, and lift values. Since this program has multiple processes running in parallel, each process appends the data to the csv file in an unorderly fashion. The objective of these routines is to sort each times stamped file in an increasing order of angle, and consequently average all time files to generate a time averaged file.

The shell script script_sort.sh arranges all the files individually in an increasing order of the first column (nk1) that contains the angle. The script script_average.sh averages all the files and writes a time_averaged.dat file that contains the time averaged values of pressure, lift, and drag forces. The script_csvtodat.sh can be used to replace all the commas to whitespaces which is the default datafile separator (delimiter) for gnuplot.  
