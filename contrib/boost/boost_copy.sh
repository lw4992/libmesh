#!/bin/bash

# Where to copy files from
from_dir=/Users/petejw/software/boost/1.55.0/boost_1_55_0/boost

# Where to copy files to
to_dir=/Users/petejw/projects/libmesh_git/contrib/boost/include/boost

# List of files to copy.  Note: this list was generated by the
# compiler dependency generation script, and then removing the leading
# path names and trailing backslashes.
# files=(
# assert.hpp
# config.hpp
# config/user.hpp
# ...
# )

for i in "${files[@]}"
do
    # Create the directory if it doesn't already exist
    if [ ! -d $to_dir/`dirname $i` ]; then
        mkdir -p $to_dir/`dirname $i`;
    fi
    cp $from_dir/$i $to_dir/$i
done