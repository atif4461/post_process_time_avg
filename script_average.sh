#!/bin/bash

awk -F"," '{a[FNR] += $1; c[FNR] += $2; b[FNR]++;}END {for(i=1;i<=FNR;i++) print a[i]/b[i],",",c[i]/b[i] > "time_averaged.csv"; }' theta_p_*_sorted.dat

