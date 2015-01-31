cat data-hold/fl_dr_list2.html     \
    data-hold/fl_dr_list.html      \
    data-hold/fl_dr_roster.html |  \
# grab the text of the third column
  pup 'td:nth-of-type(3) text{}' | \
# match only the lines that have uppercase ltters in them
# as some columns contain &nbsp;, i.e. the blank non-breaking spaces
  grep -Eo '\b[[:upper:]]{2}\b'


