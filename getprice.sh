#!/bin/bash

price=$(curl -ks http://preev.com/pulse/units:btc+eur/sources:kraken | python -m json.tool | grep -iA 1 'kraken' | grep -i 'last' | cut -f2 -d ':' |  cut -f2 -d '"' | cut -f2 -d '-' | tr -d ' ')
priceshow=$(printf "%.2f" $price)
notify-send -t 10000  " " "<b>$priceshow</b> Euro / Bitcoin"
