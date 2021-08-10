library(cobalt)

function_to_run <- function() {
    s <- list(threshold = NULL, Names = "KS", Threshold = "KS.Threshold", Stat = "KS")
    cobalt:::paste.("Balanced", s[["Names"]])
}




