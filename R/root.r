#' Retrieve root certificates
#'
#' This call returns the latest root certificates(Mozilla, Apple MacOS, Android,
#' Java and Windows) used for trust validation
#'
#' @md
#' @param trust_store one of "`moz`" (Mozilla), "`apple`", "`android`", "`java`", "`ms`" (Windows)
#' @return `list` of `openssl`-parsed certificates
#' @references <https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs-v3.md>
#' @export
#' @examples
#' get_root_certs()
get_root_certs <- function(trust_store = c("moz", "apple", "android", "java", "ms")) {

  trust_store <- match.arg(trust_store[1], c("moz", "apple", "android", "java", "ms"))

  switch(
    trust_store,
    moz = 1L,
    apple = 2L,
    android = 3L,
    java = 4L,
    ms = 5L
  ) -> trust_store

  httr::GET(
    url = "https://api.ssllabs.com/api/v3/getRootCertsRaw",
    query = list(
      trustStore = trust_store
    ),
    .SSLLABS_UA
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text")

  out <- openssl::read_cert_bundle(out)

  out

}
