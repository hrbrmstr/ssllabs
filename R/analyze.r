#' Invoke assessment and check progress
#'
#' This call is used to initiate an assessment, or to retrieve the status of an assessment
#' in progress or in the cache. It will return a single Host object on success. The
#' Endpoint object embedded in the Host object will provide partial endpoint results.
#' Please note that assessments of individual endpoints can fail even when the overall
#' assessment is successful (e.g., one server might be down). At this time, you can
#' determine the success of an endpoint assessment by checking the statusMessage field;
#' it should contain "Ready".
#'
#' @param host hostname; required.
#' @param publish set to "on" if assessment results should be published on the public
#'                results boards; optional, defaults to "off".
#' @param start_new if set to "on" then cached assessment results are ignored and a
#'                  new assessment is started. However, if there's already an assessment
#'                  in progress, its status is delivered instead. This parameter should
#'                  be used only once to initiate a new assessment; further invocations
#'                  should omit it to avoid causing an assessment loop.
#' @param from_cache always deliver cached assessment reports if available; optional,
#'                   defaults to "off". This parameter is intended for API consumers that
#'                   don't want to wait for assessment results. Can't be used at the same
#'                   time as the start_new parameter.
#' @param max_age maximum report age, in hours, if retrieving from cache (from_cache
#'                parameter set).
#' @param all by default this call results only summaries of individual endpoints. If this
#'            parameter is set to "on", full information will be returned. If set to
#'            "done", full information will be returned only if the assessment is complete
#'            (status is READY or ERROR).
#' @param ignore_mismatch set to "on" to proceed with assessments even when the server
#'                        certificate doesn't match the assessment hostname. Set to off
#'                        by default. Please note that this parameter is ignored if a
#'                        cached report is returned.
#' @references \url{https://github.com/ssllabs/ssllabs-scan/blob/stable/ssllabs-api-docs.md}
#' @export
analyze_site <- function(host, publish = "off", start_new = NULL,
                         from_cache = "off", max_age = NULL,
                         all = "on", ignore_mismatch = "off") {

  res <- httr::GET("https://api.ssllabs.com/api/v2/analyze",
                   query=list(host = host,
                              publish = publish,
                              startNew = start_new,
                              fromCache = from_cache,
                              maxAge = max_age,
                              all = all,
                              ignoreMismatch = ignore_mismatch))
  httr::stop_for_status(res)
  dat <- httr::content(res, as="text")
  return(jsonlite::fromJSON(dat, flatten=TRUE))
}
