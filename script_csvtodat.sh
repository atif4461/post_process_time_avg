for f in partial_*; do
i=1
while read line;do
  if((i==1));then
    echo ' '
  else
    echo "$line"
  fi
  ((i++))
  tr ',' ' '
done  < "$f" > "./${f%.*}.dat";
done

