#!/bin/bash
# <Changes the name of given directory>
# <Ante Skoric and Timo Quednau>
# <06.10.2019>

# ------------------------------------------------------------
# This function shows the help text for this bash script
usage(){
  echo"
  $0 [directory] [string]
  Adds the string to the name of all files in the given directory.
  "
}

# ---------------------- main --------------------------------
# check parameters
if [ $# -gt 3 ]; then
    usage
    exit 1
fi

cd $1

for file in *;
do
  extension="${file##*.}"
  filename="${file%.*}"
  mv "$file" "$filename$2.$extension";
done

#---------------------- end ----------------------------------
exit 0
