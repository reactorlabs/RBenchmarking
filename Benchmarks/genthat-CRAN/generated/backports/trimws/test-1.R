library(backports)

function_to_run <- function() {
    backports:::trimws(x = c("  a  ", "b  ", "  c"), which = "left")
}




