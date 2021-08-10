library(clubSandwich)

function_to_run <- function() {
    Z_list <- list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 
        2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 
        29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, 
        c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), 
        .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), 
        structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, 
            c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 
            64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", 
            "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 
            2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 
            22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, 
            c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 
            64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", 
            "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 
            2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 
            22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, c("(Intercept)", "Time"))), structure(c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 15, 22, 29, 36, 43, 44, 50, 57, 64), .Dim = c(11L, 2L), .Dimnames = list(NULL, 
            c("(Intercept)", "Time"))))
    D_mat <- structure(c(69.1036563772381, -0.0692766945345595, -0.0692766945345595, 0.00312515689889344), .Dim = c(2L, 2L), 
        .Dimnames = list(c("(Intercept)", "Time"), c("(Intercept)", "Time")))
    clubSandwich:::ZDZt(D = D_mat, Z_list = Z_list)
}




