#!/bin/bash

months=('January'
'February'
'March'
'April'
'May'
'June'
'July'
'August'
'September'
'October'
'November'
'December')

## Print months on screen

for month in ${months[@]}
do
    echo $month
done


for month in ${months[@]}
do
    if [ $month = 'June' ]
    then 
        echo 'yay June is my birthday'
    else
        echo 'dont care'
    fi
done

