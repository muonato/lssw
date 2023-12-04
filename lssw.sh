#!/bin/bash
# muonato/lssw @ GitHub (DEC-2023)
#
# Gets installed packages using rpm query
# + prints out software name and version
#
# Usage:
#       $ bash lssw.sh <hosts> [package]
#
# Parameters:
#       1: Path to filename or hostname
#       2: Package name to query (optional)
#
# Examples:
#       $ bash lssw.sh servers.txt
#       (to query servers listed in file)
#
#       $ bash lssw.sh server.domain.net
#       (to query the specified hostname)
#
#       $ bash lssw.sh servers.txt php
#       (to query listed servers for PHP)
#
function get_sw() {
    echo -e "\n$HOST\n=============="
    grep -A 0 -e "Name[[:blank:]].*:" -e "Epoch[[:blank:]].*:" -e "Version[[:blank:]].*:" --group-separator=""
}

# Query all or single
if [[ -z $2 ]]; then
    QUERY="rpm -qai"
else
    QUERY="rpm -qi $2"
fi

# Test for hosts file
if [[ -f "$1" ]]; then
   while read HOST ; do
        echo "" | ssh $HOST $QUERY | get_sw ;
    done < $1
else
    ssh $1 $QUERY | get_sw
fi
