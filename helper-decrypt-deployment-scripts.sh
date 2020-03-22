#!/usr/bin/env bash
# In order to pass the appropriate (sometimes sensitive) paramenters to the CloudFormation templates I
# use a set of deployment scripts. This file decrypts the files stored in git.
for f in $(ls -1 deploy-???-*.sh.gpg); do
    destfile="${f::(-4)}"
    rm -f "${destfile}"
    gpg --output "${destfile}" --decrypt "${f}"
done