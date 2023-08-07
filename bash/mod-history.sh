#!/bin/bash

functions=$(ls ../../../functions)

funcPath="../../../functions/"

# Iterate through each path and run git log
for lambda in $functions; do
    echo " "
    echo "Beginning of record: "
    echo "function path and name: $funcPath$lambda"
    git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --since="3 year ago" -- "$funcPath$lambda"
    echo "Close of record:"
    echo " "
    echo " "

done
