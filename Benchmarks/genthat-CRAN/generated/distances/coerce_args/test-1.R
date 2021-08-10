library(distances)

function_to_run <- function() {
    normalize <- "mahalanobize"
    distances:::coerce_args(arg = normalize, choices = c("none", "mahalanobize", "studentize"))
}




