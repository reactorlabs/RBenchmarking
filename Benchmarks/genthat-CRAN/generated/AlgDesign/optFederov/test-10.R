library(AlgDesign)

function_to_run <- function() {
    dat <- structure(list(A = c(-1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1), 
        B = c(-1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1), C = c(-1, -1, -1, 
            -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c(NA, 
        -27L))
    AlgDesign:::optFederov(frml = ~quad(A, B, C), data = dat, nTrials = 15, approximate = TRUE, evaluateI = TRUE)
}




