

genthat_extracted_call <- function() {
    circular <- circular::circular
    circular:::rvonmises(n = 100, mu = circular(pi/2), kappa = 2, control.circular = list(template = "geographics"))
}




