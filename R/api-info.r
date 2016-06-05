#' Check SSL Labs availability
#'
#' This call should be used to check the availability of the SSL Labs servers, retrieve
#' the engine and criteria version, and initialize the maximum number of concurrent
#' assessments. Returns one Info object on success.
#'
#' @references \url{https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs.md}
#' @export
ssllabs_api_info <- function() {

  res <- httr::GET("https://api.ssllabs.com/api/v2/info")
  dat <- httr::content(res, as="text")
  jsonlite::fromJSON(dat, flatten=TRUE)

}
