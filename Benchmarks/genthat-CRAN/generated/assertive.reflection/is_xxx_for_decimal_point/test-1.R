library(assertive.reflection)

function_to_run <- function() {
    type <- "money"
    assertive.reflection:::is_xxx_for_decimal_point(dp = ".", type = type)
}




