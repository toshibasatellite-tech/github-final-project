#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

# Validate that all inputs are numbers
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $principal =~ $re && $rate =~ $re && $time =~ $re ]]; then
    echo "Error: please enter valid positive numbers."
    exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')

echo "-----------------------------------"
echo "Principal         : $principal"
echo "Rate of interest  : $rate %"
echo "Time period       : $time years"
echo "Simple Interest   : $interest"
echo "Total Amount      : $total"
