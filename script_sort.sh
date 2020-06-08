#!/bin/bash

for f in theta_p_*; do
  i=1
  ((i++))
  sort -t, -nk1 < "$f" > "./${f%.*}_sorted.dat";
done

