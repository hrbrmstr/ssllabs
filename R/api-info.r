#' Check SSL Labs availability
#'
#' This call should be used to check the availability of the SSL Labs servers, retrieve
#' the engine and criteria version, and initialize the maximum number of concurrent
#' assessments. Returns one Info object on success.
#'
#' @md
#' @references <https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs-v3.md>
#' @export
#' @examples
#' ssllabs_api_info()
ssllabs_api_info <- function() {

  httr::GET(
    url = "https://api.ssllabs.com/api/v3/info",
    .SSLLABS_UA
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text")
  out <- jsonlite::fromJSON(out, flatten = TRUE)

  out

}
