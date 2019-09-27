# Local CA signed certificate for Vault so traffic within the
# servicemesh is encrypted. THIS WILL BE REPLACED WITH
# CONSUL CONNECT.

{% from "shared/secrets/common.sls" import maurusnet_minionca %}
{% set vault_certificate = "
-----BEGIN CERTIFICATE-----
MIIG+DCCBOCgAwIBAgICEBgwDQYJKoZIhvcNAQELBQAwgeQxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQHDAZNdW5pY2gxHTAbBgNVBAoMFG1hdXJ1cy5uZXR3b3JrcyBHbWJI
MR8wHQYDVQQLDBZNaW5pb24gR2VhcyBCaW5kaW5nIENBMS8wLQYDVQQDDCZtYXVy
dXMubmV0d29ya3MgTWluaW9uIEdlYXMgQmluZGluZyBDQTEcMBoGCSqGSIb3DQEJ
ARYNY2FAbWF1cnVzLm5ldDE1MDMGCSqGSIb3DQEJAgwmbWF1cnVzLm5ldHdvcmtz
IE1pbmlvbiBHZWFzIEJpbmRpbmcgQ0EwHhcNMTgwNDE0MjE1NTQ3WhcNMjgwNDEx
MjE1NTQ3WjCBgTELMAkGA1UEBhMCREUxDzANBgNVBAcMBk11bmljaDEdMBsGA1UE
CgwUbWF1cnVzLm5ldHdvcmtzIEdtYkgxFTATBgNVBAsMDFNlY3JldCBWYXVsdDEr
MCkGCSqGSIb3DQEJAgwcbWF1cnVzLm5ldHdvcmtzIFNlY3JldCBWYXVsdDCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKo1+92xWtPHXcZQqxQL33KmZWds
bD7tq9SjQwTg45yCMx4q5ynZG1tf/K/9aa4S/koUtHSs5NNnWrABn/4gGz5Q4KV2
xEOvTGELAy7C2y+MOinhtIiu3ZC8CPXXTliThyU1IjPj/TC+O1+ArjKAonPwrmmn
bHkIlmA6Sj4Wal5T0cnaxMGYleo7hZLHRUX8zWLQqiNmTWNaOyuat+IREFQWrXbF
gKkyK2G6LrW80/XXQ4sj4IkC1A4uYGKUrQKmIPTwjidlPvAIbGSdH+/0Y6wpaVyw
Npzt0EwPaIAL9I18TAZwtkWsURT/6fPcNu/49jalTNYgfvb5ceI6ZPQA97MCAwEA
AaOCAhMwggIPMAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFNH1k2yq9PkSJgfwdRz4
3BdajwNTMIIBEwYDVR0jBIIBCjCCAQaAFONU5g1GdCGNbeHRwsEJPg9Nu5JjoYHq
pIHnMIHkMQswCQYDVQQGEwJERTEPMA0GA1UEBwwGTXVuaWNoMR0wGwYDVQQKDBRt
YXVydXMubmV0d29ya3MgR21iSDEfMB0GA1UECwwWTWFzdGVyIENvbnRyb2wgUHJv
Z3JhbTEvMC0GA1UEAwwmbWF1cnVzLm5ldHdvcmtzIE1hc3RlciBDb250cm9sIFBy
b2dyYW0xHDAaBgkqhkiG9w0BCQEWDWNhQG1hdXJ1cy5uZXQxNTAzBgkqhkiG9w0B
CQIMJm1hdXJ1cy5uZXR3b3JrcyBNYXN0ZXIgQ29udHJvbCBQcm9ncmFtggEBMA4G
A1UdDwEB/wQEAwIFoDATBgNVHSUEDDAKBggrBgEFBQcDATBkBgNVHREEXTBbggt2
YXVsdC5sb2NhbIIOdmF1bHQuaW50ZXJuYWyCFHZhdWx0LnNlcnZpY2UuY29uc3Vs
ghR2YXVsdC5tYXVydXNuZXQudGVzdIIQdmF1bHQubWF1cnVzLm5ldDA+BgNVHR8E
NzA1MDOgMaAvhi1odHRwczovL2NybC5tYXVydXMubmV0L21pbmlvbl9yZXZvY2F0
aW9ucy5jcmwwDQYJKoZIhvcNAQELBQADggIBAFnlXc0Z+w2N/s7Ne/hnhzPDMH+D
bqYEplhvf6Ezqe+NmQHYvUcurmYMNR0nEkiXQCLz1pDHU9Aw8ukE/hzxNsNFYkWm
exMPgXc9O3effWVXkY9NZ97agOYmBfSbXyscnt0Unqmdv4vxRXfn15F70TK1+Vut
juyRIXSugWJdgxumbWO/TxulcDFphtHUC9qeRZWtDUzLIjnypmjv/MZ0rvspoaSS
/Oe5e7ccrlHUo6vYdP398SUFFxnQxuY3VKLyxirB7LD/54SgGOWOgexpzjh4Vbi9
p1idXlRL5C/svsib7RVdPth+y8FLYI2xVUCfqjT6tpOm6mIv/nvA7MUcpocUb0F+
mL63826iJN+xApG/fdw9C7ysCfvRuTJsTwQRiutIuW6yqdwyYgKtjStozy3EI9n2
ED6jSJ9m931DKaTaoYwT+gv1u0sRJq0aA6gxKr6Tkj0wNSdFSWBjB2UPzmkqSROM
5J3Lr4W6UND3PqYfpolU/wpluyqP3Apct8bXNjXlUj3y2UcDglAwOVBbcC5oqPGY
0I0I1MQJfx2/3JeUVi+lCP66ou/2Hkmt2eOOKmoY2RoMNrqjJGoYYtpWXKaiZlCL
Wps/4PRiunBLoj0kzRrL/DwWA2D3asHDpBxCmiUoHihbIpQEC5Dxw4Q3wRKXjA5F
RetI1jOUjZN0FUJt
-----END CERTIFICATE-----
"|indent(12) %}
{% set vault_key = "
-----BEGIN RSA PRIVATE KEY-----
REDACTED
-----END RSA PRIVATE KEY-----
"|indent(12) %}


ssl:
    vault:
        cert: | {{vault_certificate}}
        key: | {{vault_key}}
        certchain: | {{maurusnet_minionca}}
        combined: |
            {{vault_certificate}}
            {{maurusnet_minionca}}
        combined-key: |
            {{vault_certificate}}
            {{maurusnet_minionca}}
            {{vault_key}}


# vim: syntax=yaml
