

genthat_extracted_call <- function() {
    formla <- y ~ x
    BMisc:::addCovToFormla(covs = list("w", "z"), formla = formla)
}




