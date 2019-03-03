context("API coverage")

expect_true("engineVersion" %in% names(ssllabs_api_info()))

x <- get_root_certs()
expect(length(x) > 0)
expect_is(x[[1]], "cert")

x <- get_endpoint_data("www.ssllabs.com", "64.41.200.100", TRUE)
expect(length(x) > 0)
expect_equal(x$ipAddress, "64.41.200.100")

x <- analyze_site(host = "www.ssllabs.com", from_cache = TRUE)
expect(length(x) > 0)
expect_true(grepl("A", x$endpoints$grade[1]))
