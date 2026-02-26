#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "---------------------------"

# Input values
read -p "Enter Principal: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time (years): " time

# Validate numeric input
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values only."
    exit 1
fi

# Calculate simple interest using bc for decimals
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------"
echo "Simple Interest = $interest"
