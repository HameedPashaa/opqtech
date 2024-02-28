#!/bin/bash
data="Bangalore. Swift. 200
           Chennai. Swift. 150
          Mumbai. Tata. 300
        Delhi. Mahindra. 500"
max_sales=0
max_city=""
total_sales=0
while read -r line; do
    # Extract city and sales from each line
    city=$(echo "$line" | awk '{print $1}')
    sales=$(echo "$line" | awk '{print $NF}')
    ((total_sales += sales))    
        if ((sales > max_sales)); then
        max_sales=$sales
        max_city=$city
    fi
done <<< "$data"
echo "City with maximum sales: $max_city ($max_sales)"

#hseifoijoifoi
echo "Total number of sales: $total_sales"
