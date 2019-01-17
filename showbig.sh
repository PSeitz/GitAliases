#!/bin/bash
git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| sed -n 's/^blob //p' \
| grep -vF --file=<(git ls-tree -r HEAD | awk '{print $3}') \
| sort --numeric-sort --key=2 \
| cut -c 1-12,41- \
| awk -F' ' '{ split( "KB MB GB" , v ); s=0; while( $2>1024 ){ $2/=1024; s++ } {print $1" "int($2) v[s] " "$3 } }'
