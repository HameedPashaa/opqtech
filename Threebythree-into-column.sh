#!/bin/bash
table="1  2  3
4 5 6
7 8 9"
echo "Original table:"
echo "$table"
column_table=$(echo "$table" | tr -s ' ' '\n')
echo "Converted table:"
echo "$column_table"
