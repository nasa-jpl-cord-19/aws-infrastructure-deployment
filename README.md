# aws-infrastructure-deployment

Collection of files to create the infrastructure for this effort.

## Deployed resources

These are the containerized apps referenced in the CloudFormation templates, hosted on AWS ECR.

- [apache jena fuseki running the covid 19 ttl as in memory database](https://github.com/nasa-jpl-cord-19/container-apache-jena-fuseki)
- openie
- kibana

### But what parameters are you using in the CloudFormation templates?

Glad you asked. Some of that information could be considered sensitive (not secret or useful outside of this system) so they are available in the encrypted `*.gpg` files. If you require access to that information, contact me, you will need a GPG key.
