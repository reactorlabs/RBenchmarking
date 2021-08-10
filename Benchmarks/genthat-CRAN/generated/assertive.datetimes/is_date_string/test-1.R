library(assertive.datetimes)

function_to_run <- function() {
    x <- c("9999-12-31 23:59:59", "wednesday", NA)
    assertive.datetimes:::is_date_string(x = x)
}




