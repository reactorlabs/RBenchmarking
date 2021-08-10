library(distrEx)

function_to_run <- function() {
    Norm <- distr::Norm
    Binom <- distr::Binom
    distrEx:::CvMDist(e1 = Norm(mean = 50, sd = sqrt(25)), e2 = Binom(size = 100))
}




