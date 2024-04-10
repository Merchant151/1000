#!/usr/bin/bash
#/ (?=\$)/g
#/ (?=\w+ \$)/g

cat ./twotickertxt | perl -pe 's/ (?=\w+ \$)/;/g'| perl -pe 's/ (?=\$)/;/g' | perl -pe 's/\$//g'  > ./transFile.csv
cat ./transFile.csv > ./nyse_tickers.csv
rm ./transFile.csv
