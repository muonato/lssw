# lssw
Lists installed software package version using rpm query.
User account SSH agent forwarding required on target hosts.

Usage:
```
       $ bash lssw.sh <hosts> [package]
```
Parameters:
```
       1: Path to filename or hostname
       2: Package name to query (optional)
```    
Examples:
1. Query hosts listed in 'servers.txt' for all installed packages
```
$ bash lssw.sh servers.txt
```
2. Query the specified hostname for all installed packages
```
$ bash lssw.sh server.domain.net
```
3. Query servers listed in 'servers.txt' for PHP version
```
$ bash lssw.sh servers.txt php
```
