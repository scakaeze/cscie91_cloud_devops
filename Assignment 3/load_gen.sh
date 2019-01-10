#! /bin/bash

curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"
curl -s "http://54.193.86.88:80?[1-100000]" &
pidlist="$pidlist $!"  

for job in $pidlist do
  echo $job
  wait $job || let "FAIL+=1"
done

if [ "$FAIL" == "0" ]; then
  echo "YAY!"
else
  echo "FAIL! ($FAIL)"
fi
