library(ExPosition)

function_to_run <- function() {
    num_variables <- 10L
    num_columns <- 22L
    eigvals <- c(0.853210235484582, 0.2, 0.115113575929253, 0.0316761885861652)
    ExPosition:::i.bar.compute(num_variables = num_variables, eigvals = eigvals, num_columns = num_columns)
}




