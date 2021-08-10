library(car)

function_to_run <- function() {
    x <- structure(list(result = structure(c(-0.347628259008109, 1.25382741303859, -4.48240600068014, 0.216990982522766, 
        7.38061559089649e-06, 0.828215372430246), .Dim = 2:3, .Dimnames = list(c("income", "education"), c("MLE of lambda", 
        "Score Statistic (z)", "Pr(>|z|)"))), iterations = 8), class = "boxTidwell")
    car:::print.boxTidwell(x = x)
}




