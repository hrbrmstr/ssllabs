#' Retrieve detailed endpoint information
#'
#' This call is used to retrieve detailed endpoint information. It will return a single
#' Endpoint object on success. The object will contain complete assessment information.
#' This API call does not initiate new assessments, even when a cached report is not
#' found.
#'
#' @md
#' @param host hostname; required.
#' @param ip endpoint IP address
#' @param from_cache always deliver cached assessment reports if available; optional,
#'                   defaults to `FALSE`. This parameter is intended for API consumers that
#'                   don't want to wait for assessment results. Can't be used at the same
#'                   time as the start_new parameter.
#' @references <https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs-v3.md>
#' @export
#' @examples
#' get_endpoint_data("www.ssllabs.com", "64.41.200.100", TRUE)
get_endpoint_data <- function(host, ip, from_cache = FALSE) {

  from_cache <- if (from_cache[1]) "on" else "off"

  res <- httr::GET(
    url = "https://api.ssllabs.com/api/v3/getEndpointData",
    query = list(
      host = host,
      s = ip,
      fromCache = from_cache
    ),
    .SSLLABS_UA
  )

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text")
  out <- jsonlite::fromJSON(out, flatten = TRUE)

  out

}
