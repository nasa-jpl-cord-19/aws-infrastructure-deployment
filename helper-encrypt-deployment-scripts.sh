#!/usr/bin/env bash
# In order to pass the appropriate (sometimes sensitive) paramenters to the CloudFormation templates I
# use a set of deployment scripts. This file encrypts those files so I can "safely" store them.
for f in $(ls -1 deploy-???-*.sh); do
    echo "${f}"
    rm --force "${f}.gpg"
    gpg --encrypt --sign\
        --recipient "philip.southam@jpl.nasa.gov"\
    "${f}"
done