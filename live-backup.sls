# This pillar contains the credentials for an FTP server provided by my hoster where I upload
# backups. It should be easy to modify for S3 or other storage solutions.

duplicity-backup:
    backup-target: {{salt['file.join']('sftp://REDACTED@FTPSERVER.your-backup.de/', grains['id'])}}
    envvars:
        FTP_PASSWORD: REDACTED
