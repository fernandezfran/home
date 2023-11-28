#!/bin/bash
# (a)dd (h)eadder (i)n (a)ll (f)iles

directory="/home/ffernandez/phd/thesis"

header="% Copyright (c) 2024, Francisco Fernandez"

find "$directory" -type f -name "*.tex" -exec sed -i "1i$header" {} \;
