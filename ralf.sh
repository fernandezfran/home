#!/bin/bash
# (r)eplace lines in (al)l (f)iles

old_line="# Copyright (c) 2021, Francisco Fernandez"
new_line="# Copyright (c) 2021-2023, Francisco Fernandez"

directory="/home/ffernandez/programas/sierras"

find "$directory" -type f -exec sed -i "s|$old_line|$new_line|g" {} +
