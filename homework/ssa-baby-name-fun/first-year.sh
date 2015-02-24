        names=$(cat data-hold/names-nationwide/*.txt | grep -E '[0-9]{4}' | cut -d ',' -f 1,2 | sort | uniq)

        for name in $names; do 
            year=$(grep -lE "$name,[0-9]{3}" data-hold/names-nationwide/*.txt | \
            sort | grep -oE '[0-9]{4}' | head -n 1)

            echo "$name,$year"
        done

