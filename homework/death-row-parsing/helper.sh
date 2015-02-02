mkdir -p data-hold

curl -s http://www.tdcj.state.tx.us/death_row/dr_offenders_on_dr.html > data-hold/tx_dr.html
curl -s http://www.tdcj.state.tx.us/death_row/dr_list_all_dr_1923-1973.html > data-hold/tx_dr_past.html
curl -s http://www.dc.state.fl.us/activeinmates/deathrowroster.asp > data-hold/fl_dr_roster.html
curl -s http://www.dc.state.fl.us/oth/deathrow/execlist2.html > data-hold/fl_dr_list2.html
curl -s http://www.dc.state.fl.us/oth/deathrow/execlist.html > data-hold/fl_dr_list.html
curl -s http://www.cdcr.ca.gov/capital_punishment/docs/condemnedinmatelistsecure.pdf > data-hold/ca_dr.pdf
# make a PDF
pdftotext -layout data-hold/ca_dr.pdf data-hold/ca_dr.txt




