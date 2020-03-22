#!/usr/bin/env bash
# In order to pass the appropriate (sometimes sensitive) paramenters to the CloudFormation templates I
# use a set of deployment scripts. This file encrypts those files so I can "safely" store them. If you want
# access to decrypt these files please let me know.
for f in $(ls -1 deploy-???-*.sh); do
    echo "${f}"
    rm --force "${f}.gpg"
    gpg --encrypt --sign\
        --recipient "philip.southam@jpl.nasa.gov"\
        --recipient "03CC5FFA61AAAD3C8FF25E9270F09CC6B876884A"\
    "${f}"
    git add "${f}.gpg"
done