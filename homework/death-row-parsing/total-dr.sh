# Printing Texas
# There is one substitution necessary, as there was one inmate
# classified as "Native    American"
bash tx-dr.sh | sed -E 's/Native +American/Other/' | \
# the carat (not inside of brackets) denotes the beginning of the line
# so I'm effectively saying, substitute "TX," at the beginning of each line
      sed s/^/TX,/

# Printing Florida
# since we're discarding gender, we just need to substitute based
# on the first character
bash fl-dr.sh | sed s/B./Black/ | sed s/W./White/ | \
   sed s/H./Hispanic/ | sed s/O./Other/ | \
   sed s/^/FL,/

# Printing California
bash ca-dr.sh | sed s/WHI/White/ | sed s/BLA/Black/ | \
   sed s/HIS/Hispanic/ | sed s/OTH/Other/ | \
   sed s/^/CA,/


