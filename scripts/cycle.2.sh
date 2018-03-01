#!/bin/bash -e

/usr/portage/scripts/bootstrap.sh -q

for d in info doc man zoneinfo; do
    find /usr/share -type d -iname ${d} -exec rm -rf {} +
done
