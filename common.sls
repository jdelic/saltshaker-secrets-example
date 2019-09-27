# import this into other states
{% set maurusnet_minionca = "
-----BEGIN CERTIFICATE-----
MIIG6TCCBNGgAwIBAgIBATANBgkqhkiG9w0BAQsFADCB5DELMAkGA1UEBhMCREUx
DzANBgNVBAcMBk11bmljaDEdMBsGA1UECgwUbWF1cnVzLm5ldHdvcmtzIEdtYkgx
HzAdBgNVBAsMFk1hc3RlciBDb250cm9sIFByb2dyYW0xLzAtBgNVBAMMJm1hdXJ1
cy5uZXR3b3JrcyBNYXN0ZXIgQ29udHJvbCBQcm9ncmFtMRwwGgYJKoZIhvcNAQkB
Fg1jYUBtYXVydXMubmV0MTUwMwYJKoZIhvcNAQkCDCZtYXVydXMubmV0d29ya3Mg
TWFzdGVyIENvbnRyb2wgUHJvZ3JhbTAeFw0xNjA3MjUwOTAxNDlaFw0yNjA3MjMw
OTAxNDlaMIHkMQswCQYDVQQGEwJERTEPMA0GA1UEBwwGTXVuaWNoMR0wGwYDVQQK
DBRtYXVydXMubmV0d29ya3MgR21iSDEfMB0GA1UECwwWTWluaW9uIEdlYXMgQmlu
ZGluZyBDQTEvMC0GA1UEAwwmbWF1cnVzLm5ldHdvcmtzIE1pbmlvbiBHZWFzIEJp
bmRpbmcgQ0ExHDAaBgkqhkiG9w0BCQEWDWNhQG1hdXJ1cy5uZXQxNTAzBgkqhkiG
9w0BCQIMJm1hdXJ1cy5uZXR3b3JrcyBNaW5pb24gR2VhcyBCaW5kaW5nIENBMIIC
IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAu2HAteFR7NSSrdwR1v1hNK6F
okFBjjRmXG0aDSNng302Y8xOSmZZgaxmwOQCHirE3a1tbmhWHV6r2gPaBVHzcsjf
9Vd6w2rp1orhKZSaTbH9XQgmn49SFIifpkNRjbt5wiR0k5FBTNPaAyUkmIVR3nHz
s8HZ06n8LH8fX//sOeCkPVI47AJsgf2UeFvkYENU/xygtdqcj0++2XDpSSh0hPHs
aBRXnWZFWKfC6Y+iOTu0uxNq1l9jpV5jAo8OravHnybFYo/TZPjAx/pWN1d37hKx
I9qiDoB0Y4DllBZxvjSMDpR0qn0flCoZtoWgHVZhksZ5NlpQ/cJNovIEehFQTAPw
DwYca8OGQdCtw0AVNjGmpAt7cCDmxCNpAhNk7yJSRXsAKgUjZNxxIiZUbkW4npuJ
ZLTaKmN/pKcXrA9YTXFPhnbBqXsGgPjzSzGs5RrGjiGP4ZMf70Se1jv0gD7O3Mcl
wh7dAmiL03vnbO98s5IZZseXM2MMiL2UTSRPYP/RdCUyo0xkkaBTlbPgjt1YBfjV
1lmygk3WcLBOdgdkU0PEcbUSLBqsuSo3Mw/XKz7p8/eZpuB9rfe9LV/qAaYGXdpo
Z0D2RU0zWTfZwIECc0hggC5EbNOuIqU5cY/vRCZgBhhjhwV1wUDszil7h0GLRQjB
OpcPEE7M4Lw6LY+tFjcCAwEAAaOBozCBoDAdBgNVHQ4EFgQU41TmDUZ0IY1t4dHC
wQk+D027kmMwHwYDVR0jBBgwFoAUqH8Q4+HXb6Qh0RU013LdlhZHsecwEgYDVR0T
AQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAYYwOgYDVR0fBDMwMTAvoC2gK4Yp
aHR0cHM6Ly9jcmwubWF1cnVzLm5ldC9jYV9yZXZvY2F0aW9ucy5jcmwwDQYJKoZI
hvcNAQELBQADggIBAIICwxOkxLfuRdccE8YlgWPSG+JTLn5Q7mT9qDHBEroRSr+I
rqSWYDBgGNOz31ph4S4TAwAE1ID5nyCbhLI0DyEyObZ/5JCkM1x5AOnvKQmZi/BO
4SnR5Uqh8tEw8vJ+ZryjsGI+XOy1cgyrXUCB/Xvwbo8Lw2iJw2/EqmDtT1Wjj/0H
gIX7YczEwnwVHIhOuwG6MEXHq8WjJCfVzpmvUXwm4PTKwDp2RAN8T0aKRI8yVZyi
BHuyyLmaRtfJPij8glQMw3MW8v+cbBfqvQfThKheWW3SQWYbU7YvRjPNKDf8tnHE
WRvYAbTuou/0/5NnwYs66Tq1V1ox6VKmLqBkaafyRIof12Ym70oHndFLIG7D9tV7
t+vOX3Y6b4V1C7PCopwNMrHPqIJfF1CGvKx4/glRnvHYbY4LjPu2aC1dGFhqoYj/
ZfOTQZpDFaHjC/fiI0CIEfpJb/aupxVAmivs3/T0TZewXwrBbHqEhKk9Z7W5wTj/
i5BNeuoaNfjsFrVXwEbnV7ICGDhprp8ru+z33k+LSVXq356qSWTmf67eAlwymFez
iA3Hqh54cQpLYzVp4eW/tbJv8RbNbYyn2res0u3MlWloVotdk1lVnMj1P1tJbwUC
/2DWskacFqch1Nvz5XqiJAUk5kuK7xsEKQA4G3bEUFbK3CAHZOnTjOr+FSML
-----END CERTIFICATE-----
"|indent(12) %}
