

genthat_extracted_call <- function() {
    Norm <- distr::Norm
    Binom <- distr::Binom
    distrEx:::TotalVarDist(e1 = Norm(mean = 50, sd = sqrt(25)), e2 = Binom(size = 100))
}




