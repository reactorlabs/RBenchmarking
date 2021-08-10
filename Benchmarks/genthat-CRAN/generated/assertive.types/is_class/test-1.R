library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_class(x = c("lm", "numeric"), .xname = "c(\"lm\", \"numeric\")")
}




