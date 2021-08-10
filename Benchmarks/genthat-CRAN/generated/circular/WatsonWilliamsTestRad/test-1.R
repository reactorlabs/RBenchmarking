library(circular)

function_to_run <- function() {
    x <- structure(c(1.91986217719376, 1.74532925199433, 1.74532925199433, 1.74532925199433, 1.74532925199433, 1.74532925199433, 
        1.74532925199433, 1.74532925199433, 1.5707963267949, 1.5707963267949, 1.74532925199433, 1.74532925199433, 1.74532925199433, 
        1.5707963267949, 1.5707963267949, 1.5707963267949, 1.39626340159546, 1.39626340159546, 1.39626340159546, 1.22173047639603), 
        names = c("exp1", "exp2", "exp3", "exp4", "exp5", "exp6", "exp7", "exp8", "exp9", "exp10", "control1", "control2", 
            "control3", "control4", "control5", "control6", "control7", "control8", "control9", "control10"))
    kt <- list(kappa = structure(c(34.6141626532387, 113.727431429343), .Dim = 2L, .Dimnames = list(c("control", "exp"))), 
        kappa.all = 35.8914141970982, rho = structure(c(0.985447618841718, 0.99559377313067), .Dim = 2L, .Dimnames = list(c("control", 
            "exp"))), rho.all = 0.985969280096254, df = 1, statistic = 2.87719181583135, p.value = 0.0898425765080301)
    group <- c("exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "control", "control", "control", "control", 
        "control", "control", "control", "control", "control", "control")
    circular:::WatsonWilliamsTestRad(x = x, group = group, kt = kt)
}




