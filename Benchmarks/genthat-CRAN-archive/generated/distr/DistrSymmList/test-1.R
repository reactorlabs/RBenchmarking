

genthat_extracted_call <- function() {
    SphericalSymmetry <- distr::SphericalSymmetry
    NoSymmetry <- distr::NoSymmetry
    EllipticalSymmetry <- distr::EllipticalSymmetry
    distr:::DistrSymmList(NoSymmetry(), SphericalSymmetry(SymmCenter = 1), EllipticalSymmetry(SymmCenter = 2))
}




