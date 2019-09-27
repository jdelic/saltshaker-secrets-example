# Local CA signed certificate for postgresql so traffic within the
# servicemesh is encrypted. THIS WILL BE REPLACED WITH
# CONSUL CONNECT.

{% from "shared/secrets/common.sls" import maurusnet_minionca %}
{% set postgresql_certificate = "
-----BEGIN CERTIFICATE-----
MIIHJDCCBQygAwIBAgICEBAwDQYJKoZIhvcNAQELBQAwgeQxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQHDAZNdW5pY2gxHTAbBgNVBAoMFG1hdXJ1cy5uZXR3b3JrcyBHbWJI
MR8wHQYDVQQLDBZNaW5pb24gR2VhcyBCaW5kaW5nIENBMS8wLQYDVQQDDCZtYXVy
dXMubmV0d29ya3MgTWluaW9uIEdlYXMgQmluZGluZyBDQTEcMBoGCSqGSIb3DQEJ
ARYNY2FAbWF1cnVzLm5ldDE1MDMGCSqGSIb3DQEJAgwmbWF1cnVzLm5ldHdvcmtz
IE1pbmlvbiBHZWFzIEJpbmRpbmcgQ0EwHhcNMTcwNDI1MDAyMTE5WhcNMjcwNDIz
MDAyMTE5WjCBxjELMAkGA1UEBhMCREUxDzANBgNVBAcMBk11bmljaDEdMBsGA1UE
CgwUbWF1cnVzLm5ldHdvcmtzIEdtYkgxKjAoBgNVBAsMIVBvc3RncmVTUUwgZGF0
YWJhc2UgKFNoYXJlZCBDZXJ0KTEZMBcGA1UEAwwQcG9zdGdyZXNxbC5sb2NhbDFA
MD4GCSqGSIb3DQEJAgwxbWF1cnVzLm5ldHdvcmtzIFBvc3RncmVTUUwgZGF0YWJh
c2UgKFNoYXJlZCBDZXJ0KTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
ALthW2e/m84jbMtVrMHKP4SI9WWimyhUluXDSFM1aFhu5vSrc582LzxLtEefqKzp
mVjhoIGf6fGJOt7WnXPbFgIZUWh28ELKfs5oP+M9cz7TTFXKGzbGXn0+hKJTPjyL
fAqQt87R+z/XMuC2hH2/qKORfKNmebrBmaXBiAcY19+i4tdoyKSjM63+xRFS6Pj7
1E8wcEjJLynjr/x20PHjiiRDFYwsxRwcCP7B+owCN6cqJNhTXF6n8T3g6E91vJC9
jfcFsUAETz/on38BlPNvEdjgZr0oS4S9CbJQHqlxRUeJBTGYfNg2H3wwwL6IAPlW
k9xiU04S53SU5AJbojOD31ECAwEAAaOCAfowggH2MAwGA1UdEwEB/wQCMAAwHQYD
VR0OBBYEFNETY+yv+G2Ifccttpb46dsdKYX6MIIBEwYDVR0jBIIBCjCCAQaAFONU
5g1GdCGNbeHRwsEJPg9Nu5JjoYHqpIHnMIHkMQswCQYDVQQGEwJERTEPMA0GA1UE
BwwGTXVuaWNoMR0wGwYDVQQKDBRtYXVydXMubmV0d29ya3MgR21iSDEfMB0GA1UE
CwwWTWFzdGVyIENvbnRyb2wgUHJvZ3JhbTEvMC0GA1UEAwwmbWF1cnVzLm5ldHdv
cmtzIE1hc3RlciBDb250cm9sIFByb2dyYW0xHDAaBgkqhkiG9w0BCQEWDWNhQG1h
dXJ1cy5uZXQxNTAzBgkqhkiG9w0BCQIMJm1hdXJ1cy5uZXR3b3JrcyBNYXN0ZXIg
Q29udHJvbCBQcm9ncmFtggEBMA4GA1UdDwEB/wQEAwIFoDATBgNVHSUEDDAKBggr
BgEFBQcDATBLBgNVHREERDBCghBwb3N0Z3Jlc3FsLmxvY2FsghNwb3N0Z3Jlc3Fs
LmludGVybmFsghlwb3N0Z3Jlc3FsLnNlcnZpY2UuY29uc3VsMD4GA1UdHwQ3MDUw
M6AxoC+GLWh0dHBzOi8vY3JsLm1hdXJ1cy5uZXQvbWluaW9uX3Jldm9jYXRpb25z
LmNybDANBgkqhkiG9w0BAQsFAAOCAgEAILFIQBDtU7mmIacHrZwF2VK1FF8fDA9m
v2EFNo3C4fsGFXV8pB5nkt+nZkxOuCVejbfQj8AuB5AbkTGCcQGn1fUh0sXxjjBI
zTivDoaKWvQijXEM22s0n+6Yk9S2IkikLL5ffJS8fjBq2VKxc25cNby2A572g6Nz
LzbPDk3D858wOFPtmD387d8XXdhRqspwsiS3aMPp1UQ0nMaoe1+3jKESZlZasA91
3iK5rI8rOsWdtsoHrycJAYv8/OyG5mf2XKD8jNzOK0vt6dbiXnB4++WCKGV9KHnz
SYr6Qz5eRX8j+h9FzF+74qcaOaWyRS4RKWaj5rcaHVFHOBBMnmpaW6d1YyU3pB52
LxOPKwIfttskZMA9qWL2IKngaUmpQdEIxD2rFUAVaqBweCgaJ5SbQpfswHtjqRWM
nfHsMnoXhK2usT8KnEP88PHvXNGrS7DYTrDkx6c5CUb+f0CBTqnUZvwzkznCuAho
TWiD+tl5HCNCdHOLRk8z4PHFF9MWEslbS+4OVRZd8MexgA54io27GRondbIw9YSZ
X/d+bQdvGY5WfHJZzIcxTZNzS7Hlrx3AgSheE906CeZQNTNgDxaZj1OlEGGuqDQr
hbFbxYnP0S6eNFXPvjguIjaGAly4kHPN7ySODKcSZFOxKsY1TL2gBz9hSUVcvRC9
3vwkrJVtltE=
-----END CERTIFICATE-----
"|indent(12) %}
{% set postgresql_key = "
-----BEGIN RSA PRIVATE KEY-----
REDACTED
-----END RSA PRIVATE KEY-----
"|indent(12) %}


ssl:
    postgresql:
        cert: | {{postgresql_certificate}}
        key: | {{postgresql_key}}
        certchain: | {{maurusnet_minionca}}
        combined: |
            {{postgresql_certificate}}
            {{maurusnet_minionca}}
        combined-key: |
            {{postgresql_certificate}}
            {{maurusnet_minionca}}
            {{postgresql_key}}


# vim: syntax=yaml
