

genthat_extracted_call <- function() {
    circular <- circular::circular
    circular:::rmixedvonmises(n = 150, mu1 = circular(pi/2), mu2 = circular(3 * pi/2), kappa1 = 5, kappa2 = 5, prop = 0.5)
}




