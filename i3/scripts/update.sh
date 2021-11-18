#!/bin/bash

# Autor: https://github.com/ManuCr19

NUM=$(trizen -Qqu | wc -l)

if [[ $NUM = 0 ]]
then echo Updated
else echo $NUM
fi
