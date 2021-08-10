library(distrEx)

function_to_run <- function() {
    Norm <- distr::Norm
    distrEx:::ContaminationSize(e1 = Norm(), e2 = Norm(mean = 0.1))
}




