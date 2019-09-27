# Local CA signed certificate for smtp so traffic within the
# servicemesh is encrypted. THIS WILL BE REPLACED WITH
# CONSUL CONNECT.

{% from "shared/secrets/common.sls" import maurusnet_minionca %}
{% set smtp_certificate = "
-----BEGIN CERTIFICATE-----
MIIHBjCCBO6gAwIBAgICEBswDQYJKoZIhvcNAQELBQAwgeQxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQHDAZNdW5pY2gxHTAbBgNVBAoMFG1hdXJ1cy5uZXR3b3JrcyBHbWJI
MR8wHQYDVQQLDBZNaW5pb24gR2VhcyBCaW5kaW5nIENBMS8wLQYDVQQDDCZtYXVy
dXMubmV0d29ya3MgTWluaW9uIEdlYXMgQmluZGluZyBDQTEcMBoGCSqGSIb3DQEJ
ARYNY2FAbWF1cnVzLm5ldDE1MDMGCSqGSIb3DQEJAgwmbWF1cnVzLm5ldHdvcmtz
IE1pbmlvbiBHZWFzIEJpbmRpbmcgQ0EwHhcNMTkwOTI3MjEzMjAxWhcNMjkwOTI0
MjEzMjAxWjCBujELMAkGA1UEBhMCREUxDzANBgNVBAcMBk11bmljaDEdMBsGA1UE
CgwUbWF1cnVzLm5ldHdvcmtzIEdtYkgxJzAlBgNVBAsMHkxvY2FsIFNNVFAgcmVs
YXkgKFNoYXJlZCBDZXJ0KTETMBEGA1UEAwwKc210cC5sb2NhbDE9MDsGCSqGSIb3
DQEJAgwubWF1cnVzLm5ldHdvcmtzIExvY2FsIFNNVFAgcmVsYXkgKFNoYXJlZCBD
ZXJ0KTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL4rJRJ1zzTqB09L
tc2U1ztq61d+ZPIk27TPnn0NiR26DnqDw+b+mm8zJB5V/kTiy+CYUB6+R708cod3
jasx9FYrXtVtPauQMaZ4x7LwZNksh6DaPcUYJByk5HojQrcIdgGudbYVuDHKDQuy
D/KfVYMDGr0eIVjSJ1el1uq85YOJ7vdCcCRyT8NUbQBnlWEYbtp+ZsOwwruqF/0J
m0bqiettnB5a0jQ+qi3WtH4zadV8erSBxLMZs3qMIDshxgbJ66812oadoekVTnCt
RAmIP5TIqkm1tHdRaRmgSNy21v22KyPb3aVq8j4JQ0NcwnNvAtISaPB4Zrvny+7S
EsAGlFUCAwEAAaOCAegwggHkMAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFHusCPBX
mGLAh+mP5xuH5OdKaEp/MIIBEwYDVR0jBIIBCjCCAQaAFONU5g1GdCGNbeHRwsEJ
Pg9Nu5JjoYHqpIHnMIHkMQswCQYDVQQGEwJERTEPMA0GA1UEBwwGTXVuaWNoMR0w
GwYDVQQKDBRtYXVydXMubmV0d29ya3MgR21iSDEfMB0GA1UECwwWTWFzdGVyIENv
bnRyb2wgUHJvZ3JhbTEvMC0GA1UEAwwmbWF1cnVzLm5ldHdvcmtzIE1hc3RlciBD
b250cm9sIFByb2dyYW0xHDAaBgkqhkiG9w0BCQEWDWNhQG1hdXJ1cy5uZXQxNTAz
BgkqhkiG9w0BCQIMJm1hdXJ1cy5uZXR3b3JrcyBNYXN0ZXIgQ29udHJvbCBQcm9n
cmFtggEBMA4GA1UdDwEB/wQEAwIFoDATBgNVHSUEDDAKBggrBgEFBQcDATA5BgNV
HREEMjAwggpzbXRwLmxvY2Fsgg1zbXRwLmludGVybmFsghNzbXRwLnNlcnZpY2Uu
Y29uc3VsMD4GA1UdHwQ3MDUwM6AxoC+GLWh0dHBzOi8vY3JsLm1hdXJ1cy5uZXQv
bWluaW9uX3Jldm9jYXRpb25zLmNybDANBgkqhkiG9w0BAQsFAAOCAgEARbI4IF5I
YlInB+OB/MXiOJ34uhjLVqeOjyQ6ccoBg9KhKH7Mruto6Vz1v/I+GQnCPDcJRL8Y
Zotdn7bTGpihdvJ6TW1wd4OaHKjbqotCloA/rJR53qJE2RqEjUT1un5CM8Sx6Ezr
i28eq0FieI1dPxeceRl5/8320ltHkVZonYt8jT9J9uFWO9ljnmt0dOsytiDbxmvL
y/bKoNhRyAihq36eAH6DbvDwIwpp38LRFSZM5sTVTjMiuD5kiYHxtpqGa5E1QK1I
Fyy186HW9PoYjj/uyFHBtSIloAhHNpDL8RsfVt1axEkszl+aWPvvf2WzG6L5A8fa
3DL/eX5GOu0IJ+0lLr5xYpkdnRMpp7G4f1pTFdj2Em2WbWTvRhlDf79pBaMX6fvA
TC+P+dufmvgOGC2MJmyHkXqH9YTCJRMNdo7xTHIdqBTN6ZUcMRt4wLBfaAMQTO/I
ISe026A5A51dWlhzLDLb1DQ2JPYiH3at66bajGiroP4jMT0kO7ghvmlm8QLQvEHd
htBkP47gN2ZVpgOjMbfANMju853+1SIfsxdcA/iC4GngDT2WoilCEjfDXp4swvuD
BTh+upk7GX5QLEDNcLNMKRKA3wLv3Qq1Ie+KF/kIPowyfvUUWQXHukOfLksxUBbc
dO1/wmKb8DnsiAY+zk3EXmFDzmV9HuKu4PM=
-----END CERTIFICATE-----
"|indent(12) %}
{% set smtp_key = "
-----BEGIN RSA PRIVATE KEY-----
REDACTED
-----END RSA PRIVATE KEY-----
"|indent(12) %}


ssl:
    smtp-local:
        cert: | {{smtp_certificate}}
        key: | {{smtp_key}}
        certchain: | {{maurusnet_minionca}}
        combined: |
            {{smtp_certificate}}
            {{maurusnet_minionca}}
        combined-key: |
            {{smtp_certificate}}
            {{maurusnet_minionca}}
            {{smtp_key}}


# vim: syntax=yaml
