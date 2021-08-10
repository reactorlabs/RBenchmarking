library(BMisc)

function_to_run <- function() {
    formla <- y ~ x + w + z
    BMisc:::dropCovFromFormla(covs = list("w", "z"), formla = formla)
}




