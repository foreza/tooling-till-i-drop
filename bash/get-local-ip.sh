#!/bin/bash

## Get my local IP, I need this for charles or . Grep just the line I need.
var=$(ifconfig | grep 'inet' | grep  -v -Ee '127|inet6')

## Echo the value back,
## echo ${var:5}

## Read in values by delimiter
read -ra ADDR <<< "${var:5}"

## Print it out
echo "${ADDR[0]}"
