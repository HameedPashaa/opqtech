#!/bin/bash
output="/home/ubuntu/d1/process.txt"
ps aux >> "$output"
echo "Process captured at $(date)" >> "$output"
echo "Process captured successfully appended to $output"
