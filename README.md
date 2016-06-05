
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- 
[![Build Status](https://travis-ci.org/hrbrmstr/ssllabs.svg)](https://travis-ci.org/hrbrmstr/ssllabs) 
![Project Status: Concept - Minimal or no implementation has been done yet.](http://www.repostatus.org/badges/0.1.0/concept.svg)](http://www.repostatus.org/#concept)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ssllabs)](http://cran.r-project.org/web/packages/ssllabs) 
![downloads](http://cranlogs.r-pkg.org/badges/grand-total/ssllabs)
-->
`ssllabs` : Tools to Work with the `SSL Labs` `API`

The following functions are implemented:

-   `analyze_site`: Invoke assessment and check progress
-   `get_endpoint_data`: Retrieve detailed endpoint information
-   `get_root_certs_raw`: Retrieve root certificates
-   `get_status_codes`: Retrieve known status codes
-   `ssllabs`: Tools to Work with the 'SSL Labs' 'API'
-   `ssllabs_api_info`: Check SSL Labs availability

### Installation

``` r
devtools::install_github("hrbrmstr/ssllabs")
```

### Usage

``` r
library(ssllabs)

# current verison
packageVersion("ssllabs")
#> [1] '0.1.0.9000'

ssllabs_api_info()
#> $engineVersion
#> [1] "1.22.37"
#> 
#> $criteriaVersion
#> [1] "2009l"
#> 
#> $clientMaxAssessments
#> [1] 25
#> 
#> $maxAssessments
#> [1] 25
#> 
#> $currentAssessments
#> [1] 1
#> 
#> $newAssessmentCoolOff
#> [1] 1000
#> 
#> $messages
#> [1] "This assessment service is provided free of charge by Qualys SSL Labs, subject to our terms and conditions: https://www.ssllabs.com/about/terms.html"

get_status_codes()
#> $statusDetails
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_399
#> [1] "Testing Protocol Intolerance (TLS 1.99)"
#> 
#> $statusDetails$PREPARING_REPORT
#> [1] "Preparing the report"
#> 
#> $statusDetails$TESTING_SESSION_RESUMPTION
#> [1] "Testing session resumption"
#> 
#> $statusDetails$TESTING_NPN
#> [1] "Testing NPN"
#> 
#> $statusDetails$RETRIEVING_CERT_V3__NO_SNI
#> [1] "Retrieving certificate"
#> 
#> $statusDetails$RETRIEVING_CERT_V3__SNI_APEX
#> [1] "Retrieving certificate"
#> 
#> $statusDetails$TESTING_CVE_2014_0224
#> [1] "Testing CVE-2014-0224"
#> 
#> $statusDetails$TESTING_CAPABILITIES
#> [1] "Determining server capabilities"
#> 
#> $statusDetails$TESTING_HEARTBLEED
#> [1] "Testing Heartbleed"
#> 
#> $statusDetails$TESTING_PROTO_3_3_V2H
#> [1] "Testing TLS 1.1 (v2 handshake)"
#> 
#> $statusDetails$TESTING_SESSION_TICKETS
#> [1] "Testing Session Ticket support"
#> 
#> $statusDetails$VALIDATING_TRUST_PATHS
#> [1] "Validating trust paths"
#> 
#> $statusDetails$TESTING_RENEGOTIATION
#> [1] "Testing renegotiation"
#> 
#> $statusDetails$TESTING_HTTPS
#> [1] "Sending one complete HTTPS request"
#> 
#> $statusDetails$TESTING_V2H_HANDSHAKE
#> [1] "Testing v2 handshake"
#> 
#> $statusDetails$TESTING_STRICT_RI
#> [1] "Testing Strict Renegotiation"
#> 
#> $statusDetails$TESTING_SUITES_DEPRECATED
#> [1] "Testing deprecated cipher suites"
#> 
#> $statusDetails$TESTING_HANDSHAKE_SIMULATION
#> [1] "Simulating handshakes"
#> 
#> $statusDetails$TESTING_STRICT_SNI
#> [1] "Testing Strict SNI"
#> 
#> $statusDetails$TESTING_PROTO_3_1_V2H
#> [1] "Testing TLS 1.0 (v2 handshake)"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_499
#> [1] "Testing Protocol Intolerance (TLS 2.99)"
#> 
#> $statusDetails$TESTING_TLS_VERSION_INTOLERANCE
#> [1] "Testing TLS version intolerance"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_304
#> [1] "Testing Protocol Intolerance (TLS 1.3)"
#> 
#> $statusDetails$TESTING_SUITES_BULK
#> [1] "Bulk-testing less common cipher suites"
#> 
#> $statusDetails$TESTING_BEAST
#> [1] "Testing for BEAST"
#> 
#> $statusDetails$TESTING_PROTO_2_0
#> [1] "Testing SSL 2.0"
#> 
#> $statusDetails$BUILDING_TRUST_PATHS
#> [1] "Building trust paths"
#> 
#> $statusDetails$TESTING_PROTO_3_1
#> [1] "Testing TLS 1.0"
#> 
#> $statusDetails$TESTING_PROTO_3_0_V2H
#> [1] "Testing SSL 3.0 (v2 handshake)"
#> 
#> $statusDetails$TESTING_PROTO_3_0
#> [1] "Testing SSL 3.0"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_300
#> [1] "Testing Protocol Intolerance (SSL 3.0)"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_301
#> [1] "Testing Protocol Intolerance (TLS 1.0)"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_302
#> [1] "Testing Protocol Intolerance (TLS 1.1)"
#> 
#> $statusDetails$TESTING_PROTOCOL_INTOLERANCE_303
#> [1] "Testing Protocol Intolerance (TLS 1.2)"
#> 
#> $statusDetails$TESTING_OCSP_STAPLING_PRIME
#> [1] "Trying to prime OCSP stapling"
#> 
#> $statusDetails$TESTING_EXTENSION_INTOLERANCE
#> [1] "Testing Extension Intolerance (might take a while)"
#> 
#> $statusDetails$TESTING_SSL2_SUITES
#> [1] "Checking if SSL 2.0 has any ciphers enabled"
#> 
#> $statusDetails$TESTING_OCSP_STAPLING
#> [1] "Testing OCSP stapling"
#> 
#> $statusDetails$TESTING_SUITES
#> [1] "Determining available cipher suites"
#> 
#> $statusDetails$TESTING_PROTO_3_2_V2H
#> [1] "Testing TLS 1.1 (v2 handshake)"
#> 
#> $statusDetails$TESTING_POODLE_TLS
#> [1] "Testing POODLE against TLS"
#> 
#> $statusDetails$RETRIEVING_CERT_V3__SNI_WWW
#> [1] "Retrieving certificate"
#> 
#> $statusDetails$CHECKING_REVOCATION
#> [1] "Checking for revoked certificates"
#> 
#> $statusDetails$TESTING_COMPRESSION
#> [1] "Testing compression"
#> 
#> $statusDetails$TESTING_SUITE_PREFERENCE
#> [1] "Determining cipher suite preference"
#> 
#> $statusDetails$TESTING_PROTO_3_2
#> [1] "Testing TLS 1.1"
#> 
#> $statusDetails$TESTING_PROTO_3_3
#> [1] "Testing TLS 1.2"
#> 
#> $statusDetails$TESTING_LONG_HANDSHAKE
#> [1] "Testing Long Handshake (might take a while)"

get_root_certs_raw()
#> [x509 certificate] AAA Certificate Services
#> md5: 49:79:04:b0:eb:87:19:ac:47:b0:bc:11:51:9b:74:d0
#> sha1: d1:eb:23:a4:6d:17:d6:8f:d9:25:64:c2:f1:f1:60:17:64:d8:e3:49

analyze_site("rud.is")
#> $host
#> [1] "rud.is"
#> 
#> $port
#> [1] 443
#> 
#> $protocol
#> [1] "HTTP"
#> 
#> $isPublic
#> [1] FALSE
#> 
#> $status
#> [1] "IN_PROGRESS"
#> 
#> $startTime
#> [1] 1.465096e+12
#> 
#> $engineVersion
#> [1] "1.22.37"
#> 
#> $criteriaVersion
#> [1] "2009l"
#> 
#> $endpoints
#>         ipAddress statusMessage         statusDetails  statusDetailsMessage progress eta delegation
#> 1 104.236.112.222   In progress TESTING_OCSP_STAPLING Testing OCSP stapling       98   0          1
#>   details.hostStartTime                           details.protocols details.serverSignature details.prefixDelegation
#> 1          1.465096e+12 769, 770, 771, TLS, TLS, TLS, 1.0, 1.1, 1.2    nginx/1.4.6 (Ubuntu)                    FALSE
#>   details.nonPrefixDelegation details.vulnBeast details.renegSupport details.stsStatus details.stsResponseHeader
#> 1                        TRUE              TRUE                    2           unknown                          
#>   details.stsSubdomains details.stsPreload details.sessionResumption details.compressionMethods details.supportsNpn
#> 1                 FALSE              FALSE                         2                          0                TRUE
#>   details.npnProtocols details.sessionTickets details.sniRequired details.httpStatusCode details.rc4WithModern
#> 1             http/1.1                      1               FALSE                    200                 FALSE
#>   details.openSslCcs details.poodle details.poodleTls details.fallbackScsv details.freak details.hasSct
#> 1                  0          FALSE                 0                 TRUE         FALSE              0
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   details.dhPrimes
#> 1 e749e3dd00e8c27cdb4400c4d44126c15aea205431cda2fdc7ee9ec69c3fa40616f7c92096355e9400b98c028deac435d4e3f84a234462a6dc8277bf9c8d5b9ebc01f03b60c609a7494a18eac43fc4b05dac2919f934f9b4f8df3f1e9657a47b7e84f843675ddcf68f7edcc09b9340e4aca3b21480e0fb4e6fdc58ebf34d08592ab60c6b7330e976ad9f71a2621605445177862e4a4893c293ec49c3fc7ede6bb5debf7ebfb69ef394ac9e7577c049017f5a4355bc9805f57e38b778bea28838bbdf23eda7682e4ba0db484a3eb9c756d0f5cab110a4bdf9fb6878d312abf7b7d9d3e7826483898d360848e7a4a042fd3076cd9218b0b76caf271e854944df4b
#>   details.dhUsesKnownPrimes details.dhYsReuse details.logjam details.key.size details.key.alg details.key.debianFlaw
#> 1                         0             FALSE          FALSE             2048             RSA                  FALSE
#>   details.key.strength details.cert.subject details.cert.commonNames details.cert.altNames details.cert.notBefore
#> 1                 2048            CN=rud.is                   rud.is                rud.is           1.458496e+12
#>   details.cert.notAfter                         details.cert.issuerSubject   details.cert.issuerLabel
#> 1          1.466272e+12 CN=Let's Encrypt Authority X1,O=Let's Encrypt,C=US Let's Encrypt Authority X1
#>   details.cert.sigAlg details.cert.revocationInfo details.cert.crlURIs               details.cert.ocspURIs
#> 1       SHA256withRSA                           2                      http://ocsp.int-x1.letsencrypt.org/
#>   details.cert.revocationStatus details.cert.crlRevocationStatus details.cert.ocspRevocationStatus details.cert.sgc
#> 1                             2                                4                                 2                0
#>   details.cert.issues details.cert.sct                    details.cert.sha1Hash
#> 1                   0            FALSE 95f6c164dea0e6557269abc23dd2ef0b419cbca5
#>                         details.cert.pinSha256
#> 1 H9b6scxl5ZpWJeL0BUjJsvL70FK7E+/NRoNXlREQSpw=
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  details.chain.certs
#> 1 CN=rud.is, CN=Let's Encrypt Authority X1,O=Let's Encrypt,C=US, rud.is, Let's Encrypt Authority X1, 1458496140000, 1445294016000, 1466272140000, 1603146816000, CN=Let's Encrypt Authority X1,O=Let's Encrypt,C=US, CN=DST Root CA X3,O=Digital Signature Trust Co., Let's Encrypt Authority X1, DST Root CA X3, SHA256withRSA, SHA256withRSA, 0, 0, RSA, RSA, 2048, 2048, 2048, 2048, 2, 2, 4, 2, 2, 2, 95f6c164dea0e6557269abc23dd2ef0b419cbca5, 3eae91937ec85d74483ff4b77b07b43e2af36bf4, H9b6scxl5ZpWJeL0BUjJsvL70FK7E+/NRoNXlREQSpw=, YLh1dUR9y6Kja30RrAn7JKnbQG/uEtLMkBgFF2Fuihg=, -----BEGIN CERTIFICATE-----\nMIIE8DCCA9igAwIBAgISAdBrukxitHslErEbMj17qOZLMA0GCSqGSIb3DQEBCwUAMEoxCzAJBgNV\r\nBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MSMwIQYDVQQDExpMZXQncyBFbmNyeXB0IEF1\r\ndGhvcml0eSBYMTAeFw0xNjAzMjAxNzQ5MDBaFw0xNjA2MTgxNzQ5MDBaMBExDzANBgNVBAMTBnJ1\r\nZC5pczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAM+6xE4IWLSPIaAHqKtmbkkq2rPS\r\nNz/8whgkSPtjX9to6LMoBw6TSA2LKKT86cj3iTd5wnOUdvpSHC9F1UiTLenRqJJp9ZZ+8BRknC6y\r\nHvFqZ3KwD/uuDy+yE432u0pzs4QvhMVV871GknPDbkN5wIwxzmQKT+JLHcVyuTw8Sh+Prv/Ik4hF\r\n4/eLeZn4TxqnLpCrJsyQx2e8lBCP6FKNBOY9SKe76ES85mdwN4bIiQUHGrD/LgVqFhrSmOSpwZgE\r\nR7Zx/pcxFzGxVfvAuotiusjoT1K/kmdPVCISzqcmfum0y5fWeald1e8j9gHKqkWTwKxsZby8+hiE\r\nrH2zw+F/8HcCAwEAAaOCAgcwggIDMA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggrBgEFBQcD\r\nAQYIKwYBBQUHAwIwDAYDVR0TAQH/BAIwADAdBgNVHQ4EFgQUntefpcRjm734PxH1w6glyTA7eGQw\r\nHwYDVR0jBBgwFoAUqEpqYwR93brm0Tm3pkVl7/Oo7KEwcAYIKwYBBQUHAQEEZDBiMC8GCCsGAQUF\r\nBzABhiNodHRwOi8vb2NzcC5pbnQteDEubGV0c2VuY3J5cHQub3JnLzAvBggrBgEFBQcwAoYjaHR0\r\ncDovL2NlcnQuaW50LXgxLmxldHNlbmNyeXB0Lm9yZy8wEQYDVR0RBAowCIIGcnVkLmlzMIH+BgNV\r\nHSAEgfYwgfMwCAYGZ4EMAQIBMIHmBgsrBgEEAYLfEwEBATCB1jAmBggrBgEFBQcCARYaaHR0cDov\r\nL2Nwcy5sZXRzZW5jcnlwdC5vcmcwgasGCCsGAQUFBwICMIGeDIGbVGhpcyBDZXJ0aWZpY2F0ZSBt\r\nYXkgb25seSBiZSByZWxpZWQgdXBvbiBieSBSZWx5aW5nIFBhcnRpZXMgYW5kIG9ubHkgaW4gYWNj\r\nb3JkYW5jZSB3aXRoIHRoZSBDZXJ0aWZpY2F0ZSBQb2xpY3kgZm91bmQgYXQgaHR0cHM6Ly9sZXRz\r\nZW5jcnlwdC5vcmcvcmVwb3NpdG9yeS8wDQYJKoZIhvcNAQELBQADggEBAETgYNrXY2wx2fM472IU\r\nSsKacmeNObZiwHVgmOD1dqOkf7BiXRYh8iSCVJpm2nMLuW2noOj2mm1+kf+KmG0zQyhVRqe2nLzV\r\nTR1cobHihzY97f2itF04jG3dgbjLuZQbsgTsmttovle5PdIy9lj5Ezg9Na33IBFwathFYWsG8mHp\r\naYNUDzZDvXpcuuoGafQu74+w1SxOoDaRKT+vafikQ5cL8Cxm8ItkcqRqTl+1OYCFGD8u2haPASE7\r\nUzvGzhYN8yobn39yvRpl9URzit6VOzaCEccXHFThhTAVpfJgHyPxZ1L4bkWuC7nS1Tci568Icna9\r\nktZNc4PQZMNYjpaehtE=\r\n-----END CERTIFICATE-----\n, -----BEGIN CERTIFICATE-----\nMIIEqDCCA5CgAwIBAgIRAJgT9HUT5XULQ+dDHpceRL0wDQYJKoZIhvcNAQELBQAwPzEkMCIGA1UE\r\nChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQDEw5EU1QgUm9vdCBDQSBYMzAe\r\nFw0xNTEwMTkyMjMzMzZaFw0yMDEwMTkyMjMzMzZaMEoxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1M\r\nZXQncyBFbmNyeXB0MSMwIQYDVQQDExpMZXQncyBFbmNyeXB0IEF1dGhvcml0eSBYMTCCASIwDQYJ\r\nKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJzTDPBa5S5Ht3JdN4OzaGMw6tc1Jhkl4b2+NfFwki+3\r\nuEtBBaupnjUIWOyxKsRohwuj43Xk5vOnYnG6eYFgH9eRmp/z0HhncchpDpWRz/7mmelgPEjMfspN\r\ndxIknUcbWuu57B43ABycrHunBerOSuu9QeU2mLnL/W08lmjfIypCkAyGdGfIf6WauFJhFBM/ZemC\r\nh8vb+g5W9oaJ84U/l4avsNwa72sNlRZ9xCugZbKZBDZ1gGusSvMbkEl4L6KWTyogJSkExnTA0DHN\r\njzE4lRa6qDO4Q/GxH8Mwf6J5MRM9LTb44/zyM2q5OTHFr8SNDR1kFjOq+oQpttQLwNh9w5MCAwEA\r\nAaOCAZIwggGOMBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgGGMH8GCCsGAQUFBwEB\r\nBHMwcTAyBggrBgEFBQcwAYYmaHR0cDovL2lzcmcudHJ1c3RpZC5vY3NwLmlkZW50cnVzdC5jb20w\r\nOwYIKwYBBQUHMAKGL2h0dHA6Ly9hcHBzLmlkZW50cnVzdC5jb20vcm9vdHMvZHN0cm9vdGNheDMu\r\ncDdjMB8GA1UdIwQYMBaAFMSnsaR7LHH62+FLkHX/xBVghYkQMFQGA1UdIARNMEswCAYGZ4EMAQIB\r\nMD8GCysGAQQBgt8TAQEBMDAwLgYIKwYBBQUHAgEWImh0dHA6Ly9jcHMucm9vdC14MS5sZXRzZW5j\r\ncnlwdC5vcmcwPAYDVR0fBDUwMzAxoC+gLYYraHR0cDovL2NybC5pZGVudHJ1c3QuY29tL0RTVFJP\r\nT1RDQVgzQ1JMLmNybDATBgNVHR4EDDAKoQgwBoIELm1pbDAdBgNVHQ4EFgQUqEpqYwR93brm0Tm3\r\npkVl7/Oo7KEwDQYJKoZIhvcNAQELBQADggEBANHIIkus7+MJiZZQsY14cCoBG1hdv0J20/FyWo5p\r\npnfjL78S2k4s2GLRJ7iD9ZDKErndvbNFGcsW+9kKK/TnY21hp4DdITv8S9ZYQ7oaoqs7HwhEMY9s\r\nibED4aXw09xrJZTC9zK1uIfW6t5dHQjuOWv+HHoWZnupyxpsEUlEaFb+/SCI4KCSBdAsYxAcsHYI\r\n5xxEI4LutHp6s3OT2FuO90WfdsIk6q78OMSdn875bNjdBYAqxUp2/LEIHfDBkLoQz0hFJmwAbYah\r\nqKaLn73PAAm1X2kjf1w8DdnkabOLGeOVcj9LQ+s67vBykx4anTjURkbqZslUEUsn2k5xeua2zUk=\r\n-----END CERTIFICATE-----\n
#>   details.chain.issues details.suites.preference details.sims.results details.hstsPolicy.LONG_MAX_AGE
#> 1                    0                      TRUE                 NULL                        15552000
#>   details.hstsPolicy.status details.hpkpPolicy.status details.hpkpPolicy.pins details.hpkpPolicy.matchedPins
#> 1                   unknown                   unknown                    NULL                           NULL
#>   details.hpkpRoPolicy.status details.hpkpRoPolicy.pins details.hpkpRoPolicy.matchedPins
#> 1                     unknown                      NULL                             NULL
```

### Test Results

``` r
library(ssllabs)
library(testthat)

date()
#> [1] "Sat Jun  4 23:15:12 2016"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE ===================================================================================================================
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
