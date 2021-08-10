library(e1071)

function_to_run <- function() {
    l <- structure(list(classprob = c(0.392970977511506, 0.607029022488494), p = structure(c(0.793763493750398, 0.316416475707466, 
        0.835709999082343, 0.327151120271578, 0.199761321428432, 0.691070085132924, 0.142507600770449, 0.719897455694881), 
        .Dim = c(2L, 4L), .Dimnames = list(c("1", "2"), c("1", "2", "3", "4"))), matching = c(2L, 2L, 2L, 2L, 1L, 2L, 2L, 
        2L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L), logl = -2533.45769589444, loglsat = -2510.80814931422, chisq = 44.3560929552471, 
        lhquot = 45.2990931604418, bic = 5129.08518929972, bicsat = 5125.23262781317, n = 1000L, np = 9, matchdata = FALSE), 
        class = "lca")
    e1071:::summary.lca(object = l)
}




