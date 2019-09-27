# AWS credentials for Vault storage backend. The default configuration for
# local development uses the postgresql storage backend, but live uses S3.
# The credentials are switched using srv/pillar/top.sls depending on the
# environment.

vault:
    s3:
        aws-accesskey: REDACTED
        aws-secretkey: REDACTED


# vim: syntax=yaml
