library(assertive.data.uk)

function_to_run <- function() {
    postcodes <- c("SW1A 1AA", "SK11 9DW", "M34FP", "Le45ns", "TS25 2BZ", "gir 0aa")
    assertive.data.uk:::assert_all_are_uk_postcodes(x = postcodes)
}




