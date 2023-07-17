#!/bin/sh

if [ $# -lt 2 ]; then
    echo "Usage: $0 <python_script> <directory> [additional_parameters...]"
    exit 1
fi

python_script=$1
directory=$2

shift 2

. /home/cc/.local/red/bin/activate
export PYTHONPATH=$PYTHONPATH:$directory/NT1-HRV

python3 "$directory/$python_script" "$@"