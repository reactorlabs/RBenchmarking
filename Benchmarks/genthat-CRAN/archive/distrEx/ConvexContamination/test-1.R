library(distrEx)

function_to_run <- function() {
    Norm <- distr::Norm
    distrEx:::ConvexContamination(e1 = Norm(), e2 = Norm(mean = 5), size = 0.1)
}




