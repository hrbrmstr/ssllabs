httr::user_agent(
  sprintf(
    "ssllabs package v%s: (<%s>)",
    utils::packageVersion("ssllabs"),
    utils::packageDescription("ssllabs")$URL
  )
) -> .SSLLABS_UA
