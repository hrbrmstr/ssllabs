
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
  - `get_root_certs`: Retrieve root certificates
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
## [1] '0.2.0'

ssllabs_api_info() %>% 
  str(1)
## List of 6
##  $ engineVersion       : chr "1.32.16"
##  $ criteriaVersion     : chr "2009p"
##  $ maxAssessments      : int 25
##  $ currentAssessments  : int 0
##  $ newAssessmentCoolOff: int 1000
##  $ messages            : chr "This assessment service is provided free of charge by Qualys SSL Labs, subject to our terms and conditions: htt"| __truncated__

get_root_certs() %>% 
  str(1)
## List of 135
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##  $ :List of 8
##   [list output truncated]

get_endpoint_data(
  host = "www.ssllabs.com",
  ip = "64.41.200.100", 
  from_cache = TRUE
)
## $ipAddress
## [1] "64.41.200.100"
## 
## $serverName
## [1] "www.ssllabs.com"
## 
## $statusMessage
## [1] "Ready"
## 
## $grade
## [1] "A+"
## 
## $gradeTrustIgnored
## [1] "A+"
## 
## $hasWarnings
## [1] FALSE
## 
## $isExceptional
## [1] TRUE
## 
## $progress
## [1] 100
## 
## $duration
## [1] 40197
## 
## $delegation
## [1] 2
## 
## $details
## $details$hostStartTime
## [1] 1.551594e+12
## 
## $details$certChains
##                                                                 id
## 1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157
##                                                                                                                              certIds
## 1 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           trustPaths
## 1 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b, cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f, 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b, cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f, 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b, cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f, 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b, cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f, 3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022, 8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b, cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f, Mozilla, TRUE, Apple, TRUE, Android, TRUE, Java, TRUE, Windows, TRUE
##   issues noSni
## 1      0 FALSE
## 
## $details$protocols
##    id name version
## 1 769  TLS     1.0
## 2 770  TLS     1.1
## 3 771  TLS     1.2
## 
## $details$suites
##   protocol
## 1      769
## 2      770
## 3      771
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           list
## 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         49171, 49172, 51, 57, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_DHE_RSA_WITH_AES_128_CBC_SHA, TLS_DHE_RSA_WITH_AES_256_CBC_SHA, 128, 256, 128, 256, ECDH, ECDH, DH, DH, 3072, 3072, 2048, 2048, 256, 256, NA, NA, 23, 23, NA, NA, secp256r1, secp256r1, NA, NA, NA, NA, 256, 256, NA, NA, 256, 256, NA, NA, 1, 1, NA, NA, 256, 256
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         49171, 49172, 51, 57, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_DHE_RSA_WITH_AES_128_CBC_SHA, TLS_DHE_RSA_WITH_AES_256_CBC_SHA, 128, 256, 128, 256, ECDH, ECDH, DH, DH, 3072, 3072, 2048, 2048, 256, 256, NA, NA, 23, 23, NA, NA, secp256r1, secp256r1, NA, NA, NA, NA, 256, 256, NA, NA, 256, 256, NA, NA, 1, 1, NA, NA, 256, 256
## 3 49199, 49200, 49171, 49172, 49191, 49192, 158, 159, 51, 57, 103, 107, TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384, TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, TLS_DHE_RSA_WITH_AES_128_CBC_SHA, TLS_DHE_RSA_WITH_AES_256_CBC_SHA, TLS_DHE_RSA_WITH_AES_128_CBC_SHA256, TLS_DHE_RSA_WITH_AES_256_CBC_SHA256, 128, 256, 128, 256, 128, 256, 128, 256, 128, 256, 128, 256, ECDH, ECDH, ECDH, ECDH, ECDH, ECDH, DH, DH, DH, DH, DH, DH, 3072, 3072, 3072, 3072, 3072, 3072, 2048, 2048, 2048, 2048, 2048, 2048, 256, 256, 256, 256, 256, 256, NA, NA, NA, NA, NA, NA, 23, 23, 23, 23, 23, 23, NA, NA, NA, NA, NA, NA, secp256r1, secp256r1, secp256r1, secp256r1, secp256r1, secp256r1, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 256, 256, 256, 256, 256, 256, NA, NA, NA, NA, NA, NA, 256, 256, 256, 256, 256, 256, NA, NA, NA, NA, NA, NA, 1, 1, 1, 1, 1, 1, NA, NA, NA, NA, NA, NA, 256, 256, 256, 256, 256, 256
##   preference
## 1       TRUE
## 2       TRUE
## 3       TRUE
## 
## $details$namedGroups
## $details$namedGroups$list
##   id      name bits namedGroupType
## 1 23 secp256r1  256             EC
## 
## 
## $details$serverSignature
## [1] "Apache"
## 
## $details$prefixDelegation
## [1] TRUE
## 
## $details$nonPrefixDelegation
## [1] FALSE
## 
## $details$vulnBeast
## [1] TRUE
## 
## $details$sessionResumption
## [1] 2
## 
## $details$compressionMethods
## [1] 0
## 
## $details$supportsNpn
## [1] FALSE
## 
## $details$supportsAlpn
## [1] FALSE
## 
## $details$sessionTickets
## [1] 0
## 
## $details$ocspStapling
## [1] FALSE
## 
## $details$sniRequired
## [1] FALSE
## 
## $details$httpStatusCode
## [1] 200
## 
## $details$supportsRc4
## [1] FALSE
## 
## $details$rc4WithModern
## [1] FALSE
## 
## $details$rc4Only
## [1] FALSE
## 
## $details$forwardSecrecy
## [1] 4
## 
## $details$supportsAead
## [1] TRUE
## 
## $details$protocolIntolerance
## [1] 0
## 
## $details$miscIntolerance
## [1] 0
## 
## $details$sims
## $details$sims$results
##    errorCode attempts                                                      certChainId protocolId suiteId
## 1          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769      51
## 2          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 3          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 4          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 5          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 6          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 7          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 8          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 9          0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 10         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 11         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 12         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 13         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 14         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 15         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 16         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 17         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 18         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 19         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 20         1        0                                                             <NA>         NA      NA
## 21         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 22         1        1                                                             <NA>         NA      NA
## 23         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 24         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 25         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 26         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 27         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 28         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 29         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 30         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 31         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 32         1        1                                                             <NA>        769      51
## 33         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 34         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 35         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769      51
## 36         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 37         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 38         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 39         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 40         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        769   49171
## 41         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 42         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 43         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 44         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49171
## 45         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 46         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 47         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 48         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 49         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 50         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
## 51         0        1 3ee8e569b42ce723b20643dd67ea0e8a1c0bfe231af977ee7b43eabcb7f8f157        771   49199
##                                suiteName kxType kxStrength dhBits dhP dhG dhYs keyAlg keySize        sigAlg
## 1       TLS_DHE_RSA_WITH_AES_128_CBC_SHA     DH      16384   2048 256   1  256    RSA    2048 SHA256withRSA
## 2     TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 3     TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 4     TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 5     TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 6  TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 7  TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 8  TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 9  TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 10    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 11 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 12 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 13 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 14 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 15 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 16 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 17 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 18 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 19 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 20                                  <NA>   <NA>         NA     NA  NA  NA   NA   <NA>      NA          <NA>
## 21    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 22                                  <NA>   <NA>         NA     NA  NA  NA   NA   <NA>      NA          <NA>
## 23    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 24    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 25    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 26    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 27    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 28    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 29 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 30 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 31 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 32      TLS_DHE_RSA_WITH_AES_128_CBC_SHA     DH      16384   2048  -1  -1   -1    RSA    2048 SHA256withRSA
## 33    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 34 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 35      TLS_DHE_RSA_WITH_AES_128_CBC_SHA     DH      16384   2048 256   1  256    RSA    2048 SHA256withRSA
## 36 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 37 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 38    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 39    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 40    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 41    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 42    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 43    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 44    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 45 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 46 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 47 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 48 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 49 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 50 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
## 51 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   ECDH       3072     NA  NA  NA   NA    RSA    2048 SHA256withRSA
##    namedGroupBits namedGroupId namedGroupName                                      errorMessage alertType alertCode
## 1              NA           NA           <NA>                                              <NA>        NA        NA
## 2             256           23      secp256r1                                              <NA>        NA        NA
## 3             256           23      secp256r1                                              <NA>        NA        NA
## 4             256           23      secp256r1                                              <NA>        NA        NA
## 5             256           23      secp256r1                                              <NA>        NA        NA
## 6             256           23      secp256r1                                              <NA>        NA        NA
## 7             256           23      secp256r1                                              <NA>        NA        NA
## 8             256           23      secp256r1                                              <NA>        NA        NA
## 9             256           23      secp256r1                                              <NA>        NA        NA
## 10            256           23      secp256r1                                              <NA>        NA        NA
## 11            256           23      secp256r1                                              <NA>        NA        NA
## 12            256           23      secp256r1                                              <NA>        NA        NA
## 13            256           23      secp256r1                                              <NA>        NA        NA
## 14            256           23      secp256r1                                              <NA>        NA        NA
## 15            256           23      secp256r1                                              <NA>        NA        NA
## 16            256           23      secp256r1                                              <NA>        NA        NA
## 17            256           23      secp256r1                                              <NA>        NA        NA
## 18            256           23      secp256r1                                              <NA>        NA        NA
## 19            256           23      secp256r1                                              <NA>        NA        NA
## 20             NA           NA           <NA>                 Protocol mismatch (not simulated)        NA        NA
## 21            256           23      secp256r1                                              <NA>        NA        NA
## 22             NA           NA           <NA>        Server sent fatal alert: handshake_failure         2        40
## 23            256           23      secp256r1                                              <NA>        NA        NA
## 24            256           23      secp256r1                                              <NA>        NA        NA
## 25            256           23      secp256r1                                              <NA>        NA        NA
## 26            256           23      secp256r1                                              <NA>        NA        NA
## 27            256           23      secp256r1                                              <NA>        NA        NA
## 28            256           23      secp256r1                                              <NA>        NA        NA
## 29            256           23      secp256r1                                              <NA>        NA        NA
## 30            256           23      secp256r1                                              <NA>        NA        NA
## 31            256           23      secp256r1                                              <NA>        NA        NA
## 32             NA           NA           <NA> Client does not support DH parameters > 1024 bits        NA        NA
## 33            256           23      secp256r1                                              <NA>        NA        NA
## 34            256           23      secp256r1                                              <NA>        NA        NA
## 35             NA           NA           <NA>                                              <NA>        NA        NA
## 36            256           23      secp256r1                                              <NA>        NA        NA
## 37            256           23      secp256r1                                              <NA>        NA        NA
## 38            256           23      secp256r1                                              <NA>        NA        NA
## 39            256           23      secp256r1                                              <NA>        NA        NA
## 40            256           23      secp256r1                                              <NA>        NA        NA
## 41            256           23      secp256r1                                              <NA>        NA        NA
## 42            256           23      secp256r1                                              <NA>        NA        NA
## 43            256           23      secp256r1                                              <NA>        NA        NA
## 44            256           23      secp256r1                                              <NA>        NA        NA
## 45            256           23      secp256r1                                              <NA>        NA        NA
## 46            256           23      secp256r1                                              <NA>        NA        NA
## 47            256           23      secp256r1                                              <NA>        NA        NA
## 48            256           23      secp256r1                                              <NA>        NA        NA
## 49            256           23      secp256r1                                              <NA>        NA        NA
## 50            256           23      secp256r1                                              <NA>        NA        NA
## 51            256           23      secp256r1                                              <NA>        NA        NA
##    client.id client.name client.version client.isReference      client.platform
## 1         56     Android          2.3.7              FALSE                 <NA>
## 2         58     Android          4.0.4              FALSE                 <NA>
## 3         59     Android          4.1.1              FALSE                 <NA>
## 4         60     Android          4.2.2              FALSE                 <NA>
## 5         61     Android            4.3              FALSE                 <NA>
## 6         62     Android          4.4.2              FALSE                 <NA>
## 7         88     Android          5.0.0              FALSE                 <NA>
## 8        129     Android            6.0              FALSE                 <NA>
## 9        139     Android            7.0              FALSE                 <NA>
## 10        94       Baidu       Jan 2015              FALSE                 <NA>
## 11        91 BingPreview       Jan 2015              FALSE                 <NA>
## 12       136      Chrome             49              FALSE               XP SP3
## 13       152      Chrome             69               TRUE                Win 7
## 14       153      Chrome             70              FALSE               Win 10
## 15        84     Firefox     31.3.0 ESR              FALSE                Win 7
## 16       132     Firefox             47               TRUE                Win 7
## 17       137     Firefox             49              FALSE               XP SP3
## 18       151     Firefox             62               TRUE                Win 7
## 19       145   Googlebot       Feb 2018              FALSE                 <NA>
## 20       100          IE              6              FALSE                   XP
## 21        19          IE              7              FALSE                Vista
## 22       101          IE              8              FALSE                   XP
## 23       113          IE           8-10               TRUE                Win 7
## 24       143          IE             11               TRUE                Win 7
## 25       134          IE             11               TRUE              Win 8.1
## 26        64          IE             10              FALSE        Win Phone 8.0
## 27        65          IE             11               TRUE        Win Phone 8.1
## 28       106          IE             11               TRUE Win Phone 8.1 Update
## 29       131          IE             11               TRUE               Win 10
## 30       144        Edge             15               TRUE               Win 10
## 31       120        Edge             13               TRUE         Win Phone 10
## 32        25        Java           6u45              FALSE                 <NA>
## 33        26        Java           7u25              FALSE                 <NA>
## 34       147        Java          8u161              FALSE                 <NA>
## 35        27     OpenSSL         0.9.8y              FALSE                 <NA>
## 36        99     OpenSSL         1.0.1l               TRUE                 <NA>
## 37       121     OpenSSL         1.0.2e               TRUE                 <NA>
## 38        32      Safari          5.1.9              FALSE          OS X 10.6.8
## 39        33      Safari              6              FALSE            iOS 6.0.1
## 40        34      Safari          6.0.4               TRUE          OS X 10.8.4
## 41        63      Safari              7               TRUE              iOS 7.1
## 42        35      Safari              7               TRUE            OS X 10.9
## 43        85      Safari              8               TRUE              iOS 8.4
## 44        87      Safari              8               TRUE           OS X 10.10
## 45       114      Safari              9               TRUE                iOS 9
## 46       111      Safari              9               TRUE           OS X 10.11
## 47       140      Safari             10               TRUE               iOS 10
## 48       138      Safari             10               TRUE           OS X 10.12
## 49       112   Apple ATS              9               TRUE                iOS 9
## 50        92 Yahoo Slurp       Jan 2015              FALSE                 <NA>
## 51        93   YandexBot       Jan 2015              FALSE                 <NA>
## 
## 
## $details$heartbleed
## [1] FALSE
## 
## $details$heartbeat
## [1] FALSE
## 
## $details$openSslCcs
## [1] 1
## 
## $details$openSSLLuckyMinus20
## [1] 1
## 
## $details$ticketbleed
## [1] 1
## 
## $details$bleichenbacher
## [1] 1
## 
## $details$poodle
## [1] FALSE
## 
## $details$poodleTls
## [1] 1
## 
## $details$fallbackScsv
## [1] TRUE
## 
## $details$freak
## [1] FALSE
## 
## $details$hasSct
## [1] 1
## 
## $details$dhPrimes
## [1] "ffffffffffffffffc90fdaa22168c234c4c6628b80dc1cd129024e088a67cc74020bbea63b139b22514a08798e3404ddef9519b3cd3a431b302b0a6df25f14374fe1356d6d51c245e485b576625e7ec6f44c42e9a637ed6b0bff5cb6f406b7edee386bfb5a899fa5ae9f24117c4b1fe649286651ece45b3dc2007cb8a163bf0598da48361c55d39a69163fa8fd24cf5f83655d23dca3ad961c62f356208552bb9ed529077096966d670c354e4abc9804f1746c08ca18217c32905e462e36ce3be39e772c180e86039b2783a2ec07a28fb5c55df06f4c52c9de2bcbf6955817183995497cea956ae515d2261898fa051015728e5a8aacaa68ffffffffffffffff"
## 
## $details$dhUsesKnownPrimes
## [1] 0
## 
## $details$dhYsReuse
## [1] FALSE
## 
## $details$ecdhParameterReuse
## [1] FALSE
## 
## $details$logjam
## [1] FALSE
## 
## $details$hstsPolicy
## $details$hstsPolicy$LONG_MAX_AGE
## [1] 15552000
## 
## $details$hstsPolicy$header
## [1] "max-age=31536000"
## 
## $details$hstsPolicy$status
## [1] "present"
## 
## $details$hstsPolicy$maxAge
## [1] 31536000
## 
## $details$hstsPolicy$directives
## $details$hstsPolicy$directives$`max-age`
## [1] "31536000"
## 
## 
## 
## $details$hstsPreloads
##    source        hostname status   sourceTime
## 1  Chrome www.ssllabs.com absent 1.551593e+12
## 2    Edge www.ssllabs.com absent 1.551593e+12
## 3 Firefox www.ssllabs.com absent 1.551593e+12
## 4      IE www.ssllabs.com absent 1.551593e+12
## 
## $details$hpkpPolicy
## $details$hpkpPolicy$status
## [1] "absent"
## 
## $details$hpkpPolicy$pins
## list()
## 
## $details$hpkpPolicy$matchedPins
## list()
## 
## $details$hpkpPolicy$directives
## list()
## 
## 
## $details$hpkpRoPolicy
## $details$hpkpRoPolicy$status
## [1] "absent"
## 
## $details$hpkpRoPolicy$pins
## list()
## 
## $details$hpkpRoPolicy$matchedPins
## list()
## 
## $details$hpkpRoPolicy$directives
## list()
## 
## 
## $details$staticPkpPolicy
## $details$staticPkpPolicy$status
## [1] "absent"
## 
## $details$staticPkpPolicy$pins
## list()
## 
## $details$staticPkpPolicy$matchedPins
## list()
## 
## $details$staticPkpPolicy$forbiddenPins
## list()
## 
## $details$staticPkpPolicy$matchedForbiddenPins
## list()
## 
## 
## $details$httpTransactions
##                 requestUrl statusCode    requestLine
## 1 https://www.ssllabs.com/        200 GET / HTTP/1.1
##                                                                                                                                              requestHeaders
## 1 Host: www.ssllabs.com, User-Agent: SSL Labs (https://www.ssllabs.com/about/assessment.html); on behalf of XXX.XXX.XXX.XXX, Accept: */*, Connection: Close
##      responseLine
## 1 HTTP/1.1 200 OK
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      responseHeadersRaw
## 1 Date: Sun, 03 Mar 2019 06:28:02 GMT, Server: Apache, X-Content-Type-Options: nosniff, X-Xss-Protection: 1; mode=block, Strict-Transport-Security: max-age=31536000, Content-Type: text/html;charset=UTF-8, Set-Cookie: JSESSIONID=5817990F0D9169C3248D593A21336C0E; Path=/; Secure; HttpOnly, Vary: Accept-Encoding, X-Frame-Options: DENY, Content-Security-Policy: default-src 'self' ssllabs.com *.ssllabs.com https://www.google-analytics.com/ https://www.googletagmanager.com/ https://stats.g.doubleclick.net https://www.google.com/ https://cdn.bizible.com https://serve.albacross.com https://collect.albacross.com https://tagmanager.google.com; script-src 'self' https://cdnjs.cloudflare.com https://www.google-analytics.com/ https://www.googletagmanager.com/ https://stats.g.doubleclick.net https://www.google.com/ https://cdn.bizible.com https://serve.albacross.com https://collect.albacross.com https://tagmanager.google.com 'sha256-b/ES1VZMgjYcvUcvmmSj/qEQTV6gTFugcTmkMS0E0qk=' 'sha256-MIHgzD5ZYexjYZVdlcHHJQONMefhA7YQw4t+st69/FA=';, Connection: close, Transfer-Encoding: chunked
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         responseHeaders
## 1 Date, Server, X-Content-Type-Options, X-Xss-Protection, Strict-Transport-Security, Content-Type, Set-Cookie, Vary, X-Frame-Options, Content-Security-Policy, Connection, Transfer-Encoding, Sun, 03 Mar 2019 06:28:02 GMT, Apache, nosniff, 1; mode=block, max-age=31536000, text/html;charset=UTF-8, JSESSIONID=5817990F0D9169C3248D593A21336C0E; Path=/; Secure; HttpOnly, Accept-Encoding, DENY, default-src 'self' ssllabs.com *.ssllabs.com https://www.google-analytics.com/ https://www.googletagmanager.com/ https://stats.g.doubleclick.net https://www.google.com/ https://cdn.bizible.com https://serve.albacross.com https://collect.albacross.com https://tagmanager.google.com; script-src 'self' https://cdnjs.cloudflare.com https://www.google-analytics.com/ https://www.googletagmanager.com/ https://stats.g.doubleclick.net https://www.google.com/ https://cdn.bizible.com https://serve.albacross.com https://collect.albacross.com https://tagmanager.google.com 'sha256-b/ES1VZMgjYcvUcvmmSj/qEQTV6gTFugcTmkMS0E0qk=' 'sha256-MIHgzD5ZYexjYZVdlcHHJQONMefhA7YQw4t+st69/FA=';, close, chunked
##   fragileServer
## 1         FALSE
## 
## $details$drownHosts
## list()
## 
## $details$drownErrors
## [1] FALSE
## 
## $details$drownVulnerable
## [1] FALSE

analyze_site(
  host = "www.ssllabs.com", 
  from_cache = TRUE
) %>% 
  str(2)
## List of 11
##  $ host           : chr "www.ssllabs.com"
##  $ port           : int 443
##  $ protocol       : chr "http"
##  $ isPublic       : logi FALSE
##  $ status         : chr "READY"
##  $ startTime      : num 1.55e+12
##  $ testTime       : num 1.55e+12
##  $ engineVersion  : chr "1.32.16"
##  $ criteriaVersion: chr "2009p"
##  $ endpoints      :'data.frame': 1 obs. of  74 variables:
##   ..$ ipAddress                                   : chr "64.41.200.100"
##   ..$ serverName                                  : chr "www.ssllabs.com"
##   ..$ statusMessage                               : chr "Ready"
##   ..$ grade                                       : chr "A+"
##   ..$ gradeTrustIgnored                           : chr "A+"
##   ..$ hasWarnings                                 : logi FALSE
##   ..$ isExceptional                               : logi TRUE
##   ..$ progress                                    : int 100
##   ..$ duration                                    : int 40197
##   ..$ delegation                                  : int 2
##   ..$ details.hostStartTime                       : num 1.55e+12
##   ..$ details.certChains                          :List of 1
##   ..$ details.protocols                           :List of 1
##   ..$ details.suites                              :List of 1
##   ..$ details.serverSignature                     : chr "Apache"
##   ..$ details.prefixDelegation                    : logi TRUE
##   ..$ details.nonPrefixDelegation                 : logi FALSE
##   ..$ details.vulnBeast                           : logi TRUE
##   ..$ details.sessionResumption                   : int 2
##   ..$ details.compressionMethods                  : int 0
##   ..$ details.supportsNpn                         : logi FALSE
##   ..$ details.supportsAlpn                        : logi FALSE
##   ..$ details.sessionTickets                      : int 0
##   ..$ details.ocspStapling                        : logi FALSE
##   ..$ details.sniRequired                         : logi FALSE
##   ..$ details.httpStatusCode                      : int 200
##   ..$ details.supportsRc4                         : logi FALSE
##   ..$ details.rc4WithModern                       : logi FALSE
##   ..$ details.rc4Only                             : logi FALSE
##   ..$ details.forwardSecrecy                      : int 4
##   ..$ details.supportsAead                        : logi TRUE
##   ..$ details.protocolIntolerance                 : int 0
##   ..$ details.miscIntolerance                     : int 0
##   ..$ details.heartbleed                          : logi FALSE
##   ..$ details.heartbeat                           : logi FALSE
##   ..$ details.openSslCcs                          : int 1
##   ..$ details.openSSLLuckyMinus20                 : int 1
##   ..$ details.ticketbleed                         : int 1
##   ..$ details.bleichenbacher                      : int 1
##   ..$ details.poodle                              : logi FALSE
##   ..$ details.poodleTls                           : int 1
##   ..$ details.fallbackScsv                        : logi TRUE
##   ..$ details.freak                               : logi FALSE
##   ..$ details.hasSct                              : int 1
##   ..$ details.dhPrimes                            :List of 1
##   ..$ details.dhUsesKnownPrimes                   : int 0
##   ..$ details.dhYsReuse                           : logi FALSE
##   ..$ details.ecdhParameterReuse                  : logi FALSE
##   ..$ details.logjam                              : logi FALSE
##   ..$ details.hstsPreloads                        :List of 1
##   ..$ details.httpTransactions                    :List of 1
##   ..$ details.drownHosts                          :List of 1
##   ..$ details.drownErrors                         : logi FALSE
##   ..$ details.drownVulnerable                     : logi FALSE
##   ..$ details.namedGroups.list                    :List of 1
##   ..$ details.sims.results                        :List of 1
##   ..$ details.hstsPolicy.LONG_MAX_AGE             : int 15552000
##   ..$ details.hstsPolicy.header                   : chr "max-age=31536000"
##   ..$ details.hstsPolicy.status                   : chr "present"
##   ..$ details.hstsPolicy.maxAge                   : int 31536000
##   ..$ details.hstsPolicy.directives.max-age       : chr "31536000"
##   ..$ details.hpkpPolicy.status                   : chr "absent"
##   ..$ details.hpkpPolicy.pins                     :List of 1
##   ..$ details.hpkpPolicy.matchedPins              :List of 1
##   ..$ details.hpkpPolicy.directives               :List of 1
##   ..$ details.hpkpRoPolicy.status                 : chr "absent"
##   ..$ details.hpkpRoPolicy.pins                   :List of 1
##   ..$ details.hpkpRoPolicy.matchedPins            :List of 1
##   ..$ details.hpkpRoPolicy.directives             :List of 1
##   ..$ details.staticPkpPolicy.status              : chr "absent"
##   ..$ details.staticPkpPolicy.pins                :List of 1
##   ..$ details.staticPkpPolicy.matchedPins         :List of 1
##   ..$ details.staticPkpPolicy.forbiddenPins       :List of 1
##   ..$ details.staticPkpPolicy.matchedForbiddenPins:List of 1
##  $ certs          :'data.frame': 3 obs. of  30 variables:
##   ..$ id                      : chr [1:3] "3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022" "8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b" "cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f"
##   ..$ subject                 : chr [1:3] "CN=ssllabs.com, OU=Production, O=\"Qualys, Inc.\", L=Foster City, ST=California, C=US" "CN=DigiCert Global CA G2, O=DigiCert Inc, C=US" "CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US"
##   ..$ serialNumber            : chr [1:3] "09d8eba6cc1729e8a3b86e98f960b30b" "0c8ee0c90d6a89158804061ee241f9af" "033af1e6a711a9a0bb2864b11d09fae5"
##   ..$ commonNames             :List of 3
##   ..$ altNames                :List of 3
##   ..$ notBefore               : num [1:3] 1.53e+12 1.38e+12 1.38e+12
##   ..$ notAfter                : num [1:3] 1.56e+12 1.85e+12 2.15e+12
##   ..$ issuerSubject           : chr [1:3] "CN=DigiCert Global CA G2, O=DigiCert Inc, C=US" "CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US" "CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US"
##   ..$ sigAlg                  : chr [1:3] "SHA256withRSA" "SHA256withRSA" "SHA256withRSA"
##   ..$ revocationInfo          : int [1:3] 3 3 0
##   ..$ crlURIs                 :List of 3
##   ..$ ocspURIs                :List of 3
##   ..$ revocationStatus        : int [1:3] 2 2 0
##   ..$ crlRevocationStatus     : int [1:3] 2 2 0
##   ..$ ocspRevocationStatus    : int [1:3] 2 2 0
##   ..$ dnsCaa                  : logi [1:3] TRUE NA NA
##   ..$ mustStaple              : logi [1:3] FALSE FALSE FALSE
##   ..$ sgc                     : int [1:3] 0 0 0
##   ..$ issues                  : int [1:3] 0 0 0
##   ..$ sct                     : logi [1:3] TRUE FALSE FALSE
##   ..$ sha1Hash                : chr [1:3] "835fa74e3cecad06e82cb3469b7af8287edc59b2" "d6aee31631f7abc56b9de8abeccc4108a626b104" "df3c24f9bfd666761b268073fe06d1cc8d4f82a4"
##   ..$ sha256Hash              : chr [1:3] "3385baec319fc7c0dcf242480f01b617c024675aed7734a1abb6dc3ec45af022" "8fac576439c9fd3ef153b51f9edd0d381b5df7b87559cebeca04297dd44a639b" "cb3ccbb76031e5e0138f8dd39a23f9de47ffc35e43c1144cea27d46a5ab1cb5f"
##   ..$ pinSha256               : chr [1:3] "Apy5nr74bAFaH6LW5jamLzig16emadx9yHSDqDIVGM4=" "njN4rRG+22dNXAi+yb8e3UMypgzPUPHlv4+foULwl1g=" "i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY="
##   ..$ keyAlg                  : chr [1:3] "RSA" "RSA" "RSA"
##   ..$ keySize                 : int [1:3] 2048 2048 2048
##   ..$ keyStrength             : int [1:3] 2048 2048 2048
##   ..$ keyKnownDebianInsecure  : logi [1:3] FALSE FALSE FALSE
##   ..$ raw                     : chr [1:3] "-----BEGIN CERTIFICATE-----\nMIIGNTCCBR2gAwIBAgIQCdjrpswXKeijuG6Y+WCzCzANBgkqhkiG9w0BAQsFADBEMQswCQYDVQQG\r\nEw"| __truncated__ "-----BEGIN CERTIFICATE-----\nMIIEizCCA3OgAwIBAgIQDI7gyQ1qiRWIBAYe4kH5rzANBgkqhkiG9w0BAQsFADBhMQswCQYDVQQG\r\nEw"| __truncated__ "-----BEGIN CERTIFICATE-----\nMIIDjjCCAnagAwIBAgIQAzrx5qcRqaC7KGSxHQn65TANBgkqhkiG9w0BAQsFADBhMQswCQYDVQQG\r\nEw"| __truncated__
##   ..$ caaPolicy.policyHostname: chr [1:3] "www.ssllabs.com" NA NA
##   ..$ caaPolicy.caaRecords    :List of 3
```

## `ssllabs` Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        9 | 0.9 |  92 | 0.77 |          28 | 0.55 |      141 | 0.81 |
| Rmd  |        1 | 0.1 |  27 | 0.23 |          23 | 0.45 |       34 | 0.19 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
