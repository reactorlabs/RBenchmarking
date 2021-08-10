library(assertive.data.us)

function_to_run <- function() {
    ssns <- c("123-45-6789", "666-45-6789", "123-00-6789")
    assertive.data.us:::is_us_social_security_number(x = ssns)
}




