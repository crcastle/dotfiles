#!/bin/sh
#
# Make git diff use opendiff
#
# USAGE:
#
#   $ git diff file.rb
#   # => FileMerge will open up showing the difference between file.rb and HEAD
#
#   $ git diff --cached
#   # => FileMerge will open up showing all the changes against HEAD

/usr/bin/opendiff "$2" "$5" -merge "$1"
