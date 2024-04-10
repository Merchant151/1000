#!/usr/bin/bash
#/ (?=\$)/g
#/ (?=\w+ \$)/g

cat ./file | s/ (?=\$)/;/g > ./transFile.csv
cat ./transFile.csv | s/ (?=\w+ \$)/;/g > ./newFile.csv
