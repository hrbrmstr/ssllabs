#' Retrieve known status codes
#'
#' This call will return one StatusCodes instance.
#'
#' @references \url{https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs.md}
#' @export
get_status_codes <- function() {

  res <- httr::GET("https://api.ssllabs.com/api/v2/getStatusCodes")
  dat <- httr::content(res, as="text")
  jsonlite::fromJSON(dat, flatten=TRUE)

}
