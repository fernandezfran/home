#!/bin/bash
# (r)eplace lines in (al)l (f)iles

old_line="# Copyright (c) 2022-2023, Francisco Fernandez"
new_line="# Copyright (c) 2024, Francisco Fernandez and _"

directory="/home/ffernandez/programas/galpynostatic"

find "$directory" -type f -exec sed -i "s|$old_line|$new_line|g" {} +
