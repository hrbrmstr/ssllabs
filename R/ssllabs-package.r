#' Tools to Work with the `SSL Labs` `API`
#'
#' SSL Labs APIs are provided free of charge, subject to our terms and conditions:
#' \url{https://www.ssllabs.com/about/terms.html}. The spirit of the license is that the
#' APIs are made available so that system operators can test their own infrastructure.
#' Please read the actual terms and conditions, which are more involved and cover things
#' such as integrating with open source projects, and so on. For example, it's important
#' (for reasons of privacy, compliance, etc.) for end users to understand that assessments
#' are carried out by Qualys's servers, not locally.
#'
#' Commercial use is generally not allowed, except with an explicit permission from Qualys.
#' That said, we're usually happy to support good causes, even uses by commercial
#' organizations that help improve the security of their customers. If you're a CA, CDN,
#' hosting company, domain name registrar, we're happy for you to use our APIs (but you
#' still have to get in touch with us before you begin).
#'
#' Please note the following:
#'
#' Server assessments usually take at least 60 seconds. (They are intentionally slow, to
#' avoid harming servers.) Thus, there is no need to poll for the results very often. In
#' fact, polling too often slows down the service for everyone. It's best to use variable
#' polling: 5 seconds until an assessment gets under way (status changes to IN_PROGRESS),
#' then 10 seconds until it completes.
#'
#' Keep down the number of concurrent assessments to a minimum. If you're not in a hurry,
#' test only one hostname at a time.
#'
#' SSL Labs may limit your usage of the API, by enforcing a limit on concurrent
#' assessments, and the overall number of assessments performed in a time period. If that
#' happens, we will respond with 429 (Too Many Requests) to API calls that wish to
#' initiate new assessments. Your ability to follow previously initiated assessments, or
#' retrieve assessment results from the cache, will not be impacted. If you receive a 429
#' response, reduce the number of concurrent assessments and check that you're not
#' submitting new assessments at a rate higher than allowed.
#'
#' If the server is overloaded (a condition that is not a result of the client's
#' behaviour), the 529 status code will be used instead. This is not a situation we wish
#' to be in. If you encounter it, take a break and come back later.
#'
#' All successful API calls contain response headers X-Max-Assessments and
#' X-Current-Assessments. They can be used to calculate how many new assessments can be
#' submitted. It is recommended that clients update their internal state after each
#' complete response.
#'
#' @name ssllabs
#' @docType package
#' @author Bob Rudis (@@hrbrmstr)
#' @import httr jsonlite openssl
NULL
