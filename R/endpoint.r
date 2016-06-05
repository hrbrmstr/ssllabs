#' Retrieve detailed endpoint information
#'
#' This call is used to retrieve detailed endpoint information. It will return a single
#' Endpoint object on success. The object will contain complete assessment information.
#' This API call does not initiate new assessments, even when a cached report is not
#' found.
#'
#' @param host hostname; required.
#' @param ip endpoint IP address
#' @param from_cache always deliver cached assessment reports if available; optional,
#'                   defaults to "off". This parameter is intended for API consumers that
#'                   don't want to wait for assessment results. Can't be used at the same
#'                   time as the start_new parameter.
#' @references \url{https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs.md}
#' @export
get_endpoint_data <- function(host, ip, from_cache="off") {

  res <- httr::GET("https://api.ssllabs.com/api/v2/getEndpointData",
                   query=list(host=host,
                              s=ip,
                              fromCache=from_cache))

  dat <- httr::content(res, as="text")
  jsonlite::fromJSON(dat, flatten=TRUE)

}
