if [[ -z $1 ]]; then
  echo 'Please pass in at least one name'
fi

for name in "$@"; do
  # this step matches every line with the $name followed 
  #   immediately by a comma
  #   So that "Pat" doesn't match "Patrick" and "Patty"
  name_matches=$(cat data-hold/namesample.txt | grep  -i "^$name,")

  if [[ -z $name_matches ]]; then # no matches made
    echo "$name,NA,0,0"
  else
    m_count=0
    f_count=0  
    for row in $name_matches; do
      # get the baby count
      babies=$(echo $row | cut -d ',' -f '3')
      if [[ $row =~ ',M,' ]]
        then    
        m_count=$((m_count + babies))
      else
        f_count=$((f_count + babies))
      fi      
    done
    # done summing up m_count and f_count
    pct_female=$(( 100 * f_count / (m_count + f_count) ))

    if [[ $pct_female -ge 50 ]]; then
      str="F,$pct_female"
    else
      str="M,$((100-pct_female))"
    fi

    echo "$name,$str,$((f_count + m_count))"
  fi
done
