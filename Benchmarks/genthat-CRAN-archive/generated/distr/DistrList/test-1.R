

genthat_extracted_call <- function() {
    Pois <- distr::Pois
    Norm <- distr::Norm
    Exp <- distr::Exp
    distr:::DistrList(Norm(), Exp(), Pois())
}




