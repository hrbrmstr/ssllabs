#' Retrieve root certificates
#'
#' This call returns the root certificates used for trust validation.
#'
#' @references \url{https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs.md}
#' @export
get_root_certs_raw <- function() {

  res <- httr::GET("https://api.ssllabs.com/api/v2/getRootCertsRaw")
  httr::stop_for_status(res)
  dat <- httr::content(res, as = "text")
  return(openssl::read_cert(dat))
}
