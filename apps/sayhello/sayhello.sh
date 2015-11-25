#!/bin/bash
INPFILE=sayhello.txt
DATAFILE=sayhello.data
DELAY=2
if [ "${@}" = "" ]; then
  SAYS="nothing"
else
  SAYS="$@"
fi
echo "User "$(whoami)" says: $SAYS" | tee -i $DATAFILE 
if [ -f "$INPFILE" ]; then
  echo "Receiving sayhello.txt file"
  cat $INPFILE 
else
  echo "Did not find $INPFILE"
fi
printf "waiting for a while ($DELAY minutes) ... "
sleep $((60*DELAY)) # Wait few minutes
echo "done"
