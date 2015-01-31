cat data-hold/ca_dr.txt | \
# Cut off everything before "Living"
  grep -oE 'Living.+' | \
# Grab only boundedthree-capital letters
  grep -oE '\b[A-Z]{3}\b'
