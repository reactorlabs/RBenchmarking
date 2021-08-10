library(distr)

function_to_run <- function() {
    Pois <- distr::Pois
    Norm <- distr::Norm
    Exp <- distr::Exp
    distr:::DistrList(Norm(), Exp(), Pois())
}




