library(bacr)

function_to_run <- function() {
    interactions <- 1:4
    exposure <- "X"
    confounders <- c("V1", "V2", "V3", "V4")
    bacr:::get.predictorsY(exposure = exposure, confounders = confounders, interactions = interactions)
}




