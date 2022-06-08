#! /bin/bash

DIR=$(dirname $(realpath -s $0))
CD_SERVERS="$SHELL -c \"cd $DIR"
alias dhumtana="$CD_SERVERS && ./run.sh\""
