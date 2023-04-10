#!/bin/bash
nuclei -t cent-nuclei-templates/ -l $1 -v -rl 10 -s low,medium,high,critical -o results_scanned.txt;
