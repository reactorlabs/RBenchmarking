library(assertive.datetimes)

function_to_run <- function() {
    assertive.datetimes:::assert_all_are_date_strings(x = "01Aug1979", format = "%d%b%Y")
}




