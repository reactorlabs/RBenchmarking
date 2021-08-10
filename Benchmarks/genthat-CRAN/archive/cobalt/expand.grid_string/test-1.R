library(cobalt)

function_to_run <- function() {
    cobalt:::expand.grid_string(c("Balanced", "Max.Imbalance"), c("Means", "Variances", "KS"), collapse = ".")
}




