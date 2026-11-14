#!/bin/bash

### special variables #####

echo "all args passed to the script : $@"
echo "all args passed to the script as word: $*"
echo "number of args passed to the script: $#"
echo "first variable passed: $1"
echo "script name: $0"
echo "realpath: $(realpath $0)"
echo "who is running current script: $USER"
