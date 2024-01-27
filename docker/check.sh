#!/bin/bash


find . -name '*.json' -type f -print0 | while IFS= read -r -d '' file ;

do
    jq . "$file" > /dev/null

    status=$?
    if [ $status -eq 0 ] ;
        then
            echo "OK"
        else
            echo "FAILED"
            echo "$file"
            exit 2
    fi
done
