#!/bin/bash

echo "How many droplets to remove?"
read total

for num in $(seq $total -1 1)
do
    rm -f droplet-$num.tf
done
