# lssw
Bash script for listing software using rpm query.
'''
Usage:
       bash lssw.sh <hosts> [package]

Parameters:
       1: Path to filename or hostname
       2: Package name to query (optional)

Examples:
       bash lssw.sh servers.txt
       = query servers listed in file
'''
       bash lssw.sh server.domain.net
       = query the specified hostname

       bash lssw.sh servers.txt php
       = query listed servers for PHP
