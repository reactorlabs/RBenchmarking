

genthat_extracted_call <- function() {
    formla <- y ~ x + w + z
    BMisc:::dropCovFromFormla(covs = list("w", "z"), formla = formla)
}




