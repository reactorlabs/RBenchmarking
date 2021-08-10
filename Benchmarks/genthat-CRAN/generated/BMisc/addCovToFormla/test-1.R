library(BMisc)

function_to_run <- function() {
    formla <- y ~ x
    BMisc:::addCovToFormla(covs = list("w", "z"), formla = formla)
}




