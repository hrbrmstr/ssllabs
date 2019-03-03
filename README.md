
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ssllabs

Interrogate SSL Certificate Configuration Efficacy via ‘ssllabs’ API

## Description

‘Qualys’ provides a free online service
(<https://www.ssllabs.com/ssltest/index.html>) that performs a deep
analysis of the configuration of any SSL web server on the public
Internet. Methods are provides to initiate scans and retreive scan
results.

## What’s Inside the Tin?

The following functions are implemented:

  - `analyze_site`: Invoke assessment and check progress
  - `get_endpoint_data`: Retrieve detailed endpoint information
  - `get_root_certs_raw`: Retrieve root certificates
  - `get_status_codes`: Retrieve known status codes
  - `ssllabs`: Tools to Work with the ‘SSL Labs’ ‘API’
  - `ssllabs_api_info`: Check SSL Labs availability

## Installation

``` r
install.packages("ssllabs", repos = "https://cinc.rud.is/")
```

## Usage

``` r
library(ssllabs)

# current verison
packageVersion("ssllabs")
## [1] '0.1.0.9000'

ssllabs_api_info() %>% 
  str(1)
## List of 7
##  $ engineVersion       : chr "1.32.16"
##  $ criteriaVersion     : chr "2009p"
##  $ clientMaxAssessments: int 24
##  $ maxAssessments      : int 24
##  $ currentAssessments  : int 0
##  $ newAssessmentCoolOff: int 1000
##  $ messages            : chr "This assessment service is provided free of charge by Qualys SSL Labs, subject to our terms and conditions: htt"| __truncated__

get_status_codes() %>% 
  str(2)
## List of 1
##  $ statusDetails:List of 58
##   ..$ TESTING_STRICT_RI               : chr "Testing Strict Renegotiation"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_304: chr "Testing Protocol Intolerance (TLS 1.3)"
##   ..$ TESTING_HANDSHAKE_SIMULATION    : chr "Simulating handshakes"
##   ..$ TESTING_CVE_2014_0224           : chr "Testing CVE-2014-0224"
##   ..$ TESTING_PROTO_3_2_V2H           : chr "Testing TLS 1.1 (v2 handshake)"
##   ..$ TESTING_HEARTBLEED              : chr "Testing Heartbleed"
##   ..$ TESTING_RENEGOTIATION           : chr "Testing renegotiation"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_300: chr "Testing Protocol Intolerance (SSL 3.0)"
##   ..$ TESTING_ECDHE_PARAMETER_REUSE   : chr "Testing ECDHE parameter reuse"
##   ..$ TESTING_SUITES_BULK             : chr "Bulk-testing less common cipher suites"
##   ..$ TESTING_PROTO_3_1_V2H           : chr "Testing TLS 1.0 (v2 handshake)"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_301: chr "Testing Protocol Intolerance (TLS 1.0)"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_302: chr "Testing Protocol Intolerance (TLS 1.1)"
##   ..$ BUILDING_TRUST_PATHS            : chr "Building trust paths"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_303: chr "Testing Protocol Intolerance (TLS 1.2)"
##   ..$ TESTING_PROTO_3_0               : chr "Testing SSL 3.0"
##   ..$ TESTING_DROWN                   : chr "Testing for DROWN"
##   ..$ TESTING_PROTO_3_1               : chr "Testing TLS 1.0"
##   ..$ TESTING_PROTO_3_3_V2H           : chr "Testing TLS 1.1 (v2 handshake)"
##   ..$ TESTING_SUITE_PREFERENCE        : chr "Determining cipher suite preference"
##   ..$ TESTING_TLS_VERSION_INTOLERANCE : chr "Testing TLS version intolerance"
##   ..$ VALIDATING_TRUST_PATHS          : chr "Validating trust paths"
##   ..$ TESTING_LONG_HANDSHAKE          : chr "Testing Long Handshake (might take a while)"
##   ..$ TESTING_SUITES_DEPRECATED       : chr "Testing deprecated cipher suites"
##   ..$ TESTING_TICKETBLEED             : chr "Testing Ticketbleed"
##   ..$ RETRIEVING_CERT_V3__SNI_APEX    : chr "Retrieving certificate"
##   ..$ TESTING_SESSION_TICKETS         : chr "Testing Session Ticket support"
##   ..$ TESTING_PROTO_3_4               : chr "Testing TLS 1.3"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_499: chr "Testing Protocol Intolerance (TLS 2.152)"
##   ..$ TESTING_PROTO_3_2               : chr "Testing TLS 1.1"
##   ..$ TESTING_PROTO_3_3               : chr "Testing TLS 1.2"
##   ..$ RETRIEVING_CERT_V3__SNI_WWW     : chr "Retrieving certificate"
##   ..$ TESTING_SUITES_NO_SNI           : chr "Observed extra suites during simulation, Testing cipher suites without SNI support"
##   ..$ TESTING_CAPABILITIES            : chr "Determining server capabilities"
##   ..$ TESTING_EXTENSION_INTOLERANCE   : chr "Testing Extension Intolerance (might take a while)"
##   ..$ TESTING_EC_NAMED_CURVES         : chr "Determining supported named groups"
##   ..$ TESTING_NPN                     : chr "Testing NPN"
##   ..$ TESTING_POODLE_TLS              : chr "Testing POODLE against TLS"
##   ..$ CHECKING_REVOCATION             : chr "Checking for revoked certificates"
##   ..$ TESTING_BEAST                   : chr "Testing for BEAST"
##   ..$ TESTING_COMPRESSION             : chr "Testing compression"
##   ..$ RETRIEVING_CERT_V3__NO_SNI      : chr "Retrieving certificate"
##   ..$ RETRIEVING_CERT_TLS13           : chr "Retrieving certificate"
##   ..$ TESTING_PROTO_2_0               : chr "Testing SSL 2.0"
##   ..$ TESTING_ALPN                    : chr "Determining supported ALPN protocols"
##   ..$ TESTING_OCSP_STAPLING_PRIME     : chr "Trying to prime OCSP stapling"
##   ..$ TESTING_SESSION_RESUMPTION      : chr "Testing session resumption"
##   ..$ TESTING_OCSP_STAPLING           : chr "Testing OCSP stapling"
##   ..$ TESTING_PROTOCOL_INTOLERANCE_399: chr "Testing Protocol Intolerance (TLS 1.152)"
##   ..$ TESTING_STRICT_SNI              : chr "Testing Strict SNI"
##   ..$ TESTING_HTTPS                   : chr "Sending one complete HTTPS request"
##   ..$ PREPARING_REPORT                : chr "Preparing the report"
##   ..$ TESTING_SSL2_SUITES             : chr "Checking if SSL 2.0 has any ciphers enabled"
##   ..$ TESTING_SUITES                  : chr "Determining available cipher suites"
##   ..$ TESTING_CVE_2016_2107           : chr "Testing CVE-2016-2107"
##   ..$ TESTING_PROTO_3_0_V2H           : chr "Testing SSL 3.0 (v2 handshake)"
##   ..$ TESTING_V2H_HANDSHAKE           : chr "Testing v2 handshake"
##   ..$ TESTING_BLEICHENBACHER          : chr "Testing Bleichenbacher"

get_root_certs_raw() %>% 
  str(1)
## List of 8
##  $ subject    : chr "CN=AAA Certificate Services,O=Comodo CA Limited,L=Salford,ST=Greater Manchester,C=GB"
##  $ issuer     : chr "CN=AAA Certificate Services,O=Comodo CA Limited,L=Salford,ST=Greater Manchester,C=GB"
##  $ algorithm  : chr "sha1WithRSAEncryption"
##  $ signature  : raw [1:256] 08 56 fc 02 ...
##  $ validity   : chr [1:2] "Jan  1 00:00:00 2004 GMT" "Dec 31 23:59:59 2028 GMT"
##  $ self_signed: logi TRUE
##  $ alt_names  : NULL
##  $ pubkey     :List of 5

analyze_site("rud.is") %>% 
  str(2)
## List of 10
##  $ host           : chr "rud.is"
##  $ port           : int 443
##  $ protocol       : chr "HTTP"
##  $ isPublic       : logi FALSE
##  $ status         : chr "READY"
##  $ startTime      : num 1.55e+12
##  $ testTime       : num 1.55e+12
##  $ engineVersion  : chr "1.32.16"
##  $ criteriaVersion: chr "2009p"
##  $ endpoints      :'data.frame': 2 obs. of  96 variables:
##   ..$ ipAddress                                      : chr [1:2] "2602:ff16:3:0:0:0:4dfb:9ac5" "172.93.49.183"
##   ..$ statusMessage                                  : chr [1:2] "Ready" "Ready"
##   ..$ grade                                          : chr [1:2] "A+" "A+"
##   ..$ gradeTrustIgnored                              : chr [1:2] "A+" "A+"
##   ..$ hasWarnings                                    : logi [1:2] FALSE FALSE
##   ..$ isExceptional                                  : logi [1:2] TRUE TRUE
##   ..$ progress                                       : int [1:2] 100 100
##   ..$ duration                                       : int [1:2] 41233 40519
##   ..$ eta                                            : int [1:2] 6 3
##   ..$ delegation                                     : int [1:2] 1 1
##   ..$ details.hostStartTime                          : num [1:2] 1.55e+12 1.55e+12
##   ..$ details.protocols                              :List of 2
##   ..$ details.serverSignature                        : chr [1:2] "nginx/1.15.9" "nginx/1.15.9"
##   ..$ details.prefixDelegation                       : logi [1:2] FALSE FALSE
##   ..$ details.nonPrefixDelegation                    : logi [1:2] TRUE TRUE
##   ..$ details.vulnBeast                              : logi [1:2] FALSE FALSE
##   ..$ details.stsStatus                              : chr [1:2] "present" "present"
##   ..$ details.stsResponseHeader                      : chr [1:2] "max-age=31536000; includeSubDomains; preload" "max-age=31536000; includeSubDomains; preload"
##   ..$ details.stsMaxAge                              : int [1:2] 31536000 31536000
##   ..$ details.stsSubdomains                          : logi [1:2] TRUE TRUE
##   ..$ details.stsPreload                             : logi [1:2] TRUE TRUE
##   ..$ details.sessionResumption                      : int [1:2] 2 2
##   ..$ details.compressionMethods                     : int [1:2] 0 0
##   ..$ details.supportsNpn                            : logi [1:2] TRUE TRUE
##   ..$ details.npnProtocols                           : chr [1:2] "h2 http/1.1" "h2 http/1.1"
##   ..$ details.supportsAlpn                           : logi [1:2] TRUE TRUE
##   ..$ details.sessionTickets                         : int [1:2] 0 0
##   ..$ details.ocspStapling                           : logi [1:2] TRUE TRUE
##   ..$ details.staplingRevocationStatus               : int [1:2] 2 2
##   ..$ details.sniRequired                            : logi [1:2] TRUE TRUE
##   ..$ details.httpStatusCode                         : int [1:2] 200 200
##   ..$ details.supportsRc4                            : logi [1:2] FALSE FALSE
##   ..$ details.rc4WithModern                          : logi [1:2] FALSE FALSE
##   ..$ details.rc4Only                                : logi [1:2] FALSE FALSE
##   ..$ details.forwardSecrecy                         : int [1:2] 4 4
##   ..$ details.protocolIntolerance                    : int [1:2] 0 0
##   ..$ details.miscIntolerance                        : int [1:2] 0 0
##   ..$ details.heartbleed                             : logi [1:2] FALSE FALSE
##   ..$ details.heartbeat                              : logi [1:2] TRUE TRUE
##   ..$ details.openSslCcs                             : int [1:2] 1 1
##   ..$ details.openSSLLuckyMinus20                    : int [1:2] 1 1
##   ..$ details.poodle                                 : logi [1:2] FALSE FALSE
##   ..$ details.poodleTls                              : int [1:2] 1 1
##   ..$ details.freak                                  : logi [1:2] FALSE FALSE
##   ..$ details.hasSct                                 : int [1:2] 1 1
##   ..$ details.logjam                                 : logi [1:2] FALSE FALSE
##   ..$ details.hstsPreloads                           :List of 2
##   ..$ details.drownHosts                             :List of 2
##   ..$ details.drownErrors                            : logi [1:2] FALSE FALSE
##   ..$ details.drownVulnerable                        : logi [1:2] FALSE FALSE
##   ..$ details.key.size                               : int [1:2] 2048 2048
##   ..$ details.key.alg                                : chr [1:2] "RSA" "RSA"
##   ..$ details.key.debianFlaw                         : logi [1:2] FALSE FALSE
##   ..$ details.key.strength                           : int [1:2] 2048 2048
##   ..$ details.cert.subject                           : chr [1:2] "CN=rud.is" "CN=rud.is"
##   ..$ details.cert.commonNames                       :List of 2
##   ..$ details.cert.altNames                          :List of 2
##   ..$ details.cert.notBefore                         : num [1:2] 1.55e+12 1.55e+12
##   ..$ details.cert.notAfter                          : num [1:2] 1.56e+12 1.56e+12
##   ..$ details.cert.issuerSubject                     : chr [1:2] "CN=Let's Encrypt Authority X3, O=Let's Encrypt, C=US" "CN=Let's Encrypt Authority X3, O=Let's Encrypt, C=US"
##   ..$ details.cert.issuerLabel                       : chr [1:2] "Let's Encrypt Authority X3" "Let's Encrypt Authority X3"
##   ..$ details.cert.sigAlg                            : chr [1:2] "SHA256withRSA" "SHA256withRSA"
##   ..$ details.cert.revocationInfo                    : int [1:2] 2 2
##   ..$ details.cert.crlURIs                           :List of 2
##   ..$ details.cert.ocspURIs                          :List of 2
##   ..$ details.cert.revocationStatus                  : int [1:2] 2 2
##   ..$ details.cert.crlRevocationStatus               : int [1:2] 4 4
##   ..$ details.cert.ocspRevocationStatus              : int [1:2] 2 2
##   ..$ details.cert.sgc                               : int [1:2] 0 0
##   ..$ details.cert.issues                            : int [1:2] 0 0
##   ..$ details.cert.sct                               : logi [1:2] TRUE TRUE
##   ..$ details.cert.mustStaple                        : int [1:2] 0 0
##   ..$ details.cert.sha1Hash                          : chr [1:2] "11ddb41c60593c77c93c32da72dd6d10f3c017f7" "11ddb41c60593c77c93c32da72dd6d10f3c017f7"
##   ..$ details.cert.pinSha256                         : chr [1:2] "zx1eDaN0/w/ZvtwQW5wPWUunFkSGQ6Fp8uOOh4Qn85A=" "zx1eDaN0/w/ZvtwQW5wPWUunFkSGQ6Fp8uOOh4Qn85A="
##   ..$ details.chain.certs                            :List of 2
##   ..$ details.chain.issues                           : int [1:2] 0 0
##   ..$ details.suites.list                            :List of 2
##   ..$ details.suites.preference                      : logi [1:2] TRUE TRUE
##   ..$ details.sims.results                           :List of 2
##   ..$ details.hstsPolicy.LONG_MAX_AGE                : int [1:2] 15552000 15552000
##   ..$ details.hstsPolicy.header                      : chr [1:2] "max-age=31536000; includeSubDomains; preload" "max-age=31536000; includeSubDomains; preload"
##   ..$ details.hstsPolicy.status                      : chr [1:2] "present" "present"
##   ..$ details.hstsPolicy.maxAge                      : int [1:2] 31536000 31536000
##   ..$ details.hstsPolicy.includeSubDomains           : logi [1:2] TRUE TRUE
##   ..$ details.hstsPolicy.preload                     : logi [1:2] TRUE TRUE
##   ..$ details.hstsPolicy.directives.includesubdomains: chr [1:2] "" ""
##   ..$ details.hstsPolicy.directives.max-age          : chr [1:2] "31536000" "31536000"
##   ..$ details.hstsPolicy.directives.preload          : chr [1:2] "" ""
##   ..$ details.hpkpPolicy.status                      : chr [1:2] "absent" "absent"
##   ..$ details.hpkpPolicy.pins                        :List of 2
##   ..$ details.hpkpPolicy.matchedPins                 :List of 2
##   ..$ details.hpkpPolicy.directives                  :List of 2
##   ..$ details.hpkpRoPolicy.status                    : chr [1:2] "absent" "absent"
##   ..$ details.hpkpRoPolicy.pins                      :List of 2
##   ..$ details.hpkpRoPolicy.matchedPins               :List of 2
##   ..$ details.hpkpRoPolicy.directives                :List of 2
```

## `ssllabs` Metrics

| Lang | \# Files | (%) | LoC | (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | --: | ----------: | ---: | -------: | ---: |
| R    |        9 | 0.9 |  49 | 0.7 |           9 | 0.28 |      131 | 0.79 |
| Rmd  |        1 | 0.1 |  21 | 0.3 |          23 | 0.72 |       34 | 0.21 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
