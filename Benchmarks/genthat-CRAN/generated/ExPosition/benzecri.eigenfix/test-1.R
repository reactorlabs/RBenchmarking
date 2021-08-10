library(ExPosition)

function_to_run <- function() {
    numVariables <- 10L
    eigvals <- c(0.853210235484582, 0.2, 0.115113575929253, 0.0316761885861652)
    ExPosition:::benzecri.eigenfix(eigvals = eigvals, num_variables = numVariables)
}




