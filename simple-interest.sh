#!/bin/bash

# Script to calculate simple interest

# Prompt user for inputs
echo "Enter Principal Amount:"
read principal
echo "Enter Annual Interest Rate (in %):"
read rate
echo "Enter Time (in years):"
read time

# Validate inputs
if [[ ! "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate Simple Interest: SI = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest: $interest"
