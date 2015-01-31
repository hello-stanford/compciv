state=$1
year=$2

# grabbing just the filenames of all the states except $state
fnames=$(ls ./data-hold/names-by-state/*.TXT | grep -v $state )

# Now compiling  all the names in all the OTHER states and getting just the 
# unique combinations of name and gender, that were found in $year
cat $fnames | grep ",$year," | cut -d ',' -f 2,4 | sort | uniq > data-hold/tmp.txt
 
# get all the names in this $state
# find only the rows that belong to that year
# then do a grep -v -f of the combined names found in the previous step
cat "./data-hold/names-by-state/$state.TXT" | \
    grep ",$year," | \
    cut -d ',' -f 2,4,5 | \
    grep -vF -f data-hold/tmp.txt
