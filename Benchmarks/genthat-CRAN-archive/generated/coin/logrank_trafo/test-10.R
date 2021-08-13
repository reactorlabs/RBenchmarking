

genthat_extracted_call <- function() {
    y <- structure(c(1, 1, 5, 6, 6, 6, 6, 2, 2, 2, 3, 4, 4, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 
        2L), .Dimnames = list(NULL, c("time", "status")), type = "right", class = "Surv")
    type <- "logrank"
    ties.method <- c("mid-ranks", "Hothorn-Lausen", "average-scores")
    rho <- NULL
    gamma <- NULL
    coin:::logrank_trafo(x = y, ties.method = ties.method, type = type, rho = rho, gamma = gamma)
}




