library(catdap)

function_to_run <- function() {
    x <- structure(list(tway.table = list(list(list(res = "Survived", n = structure(c(122L, 167L, 528L, 673L, 203L, 118L, 
        178L, 212L), .Dim = c(4L, 2L), .Dimnames = list(c("1st", "2nd", "3rd", "Crew"), c("No", "Yes"))), p = structure(c(37.5384635925293, 
        58.596492767334, 74.7875366210938, 76.0451965332031, 62.461540222168, 41.403507232666, 25.2124652862549, 23.9548015594482), 
        .Dim = c(4L, 2L))), list(res = "Survived", n = structure(c(126L, 1364L, 344L, 367L), .Dim = c(2L, 2L), .Dimnames = list(c("Female", 
        "Male"), c("No", "Yes"))), p = structure(c(26.8085117340088, 78.7983779907227, 73.1914901733398, 21.2016162872314), 
        .Dim = c(2L, 2L))), list(res = "Survived", n = structure(c(1438L, 52L, 654L, 57L), .Dim = c(2L, 2L), .Dimnames = list(c("Adult", 
        "Child"), c("No", "Yes"))), p = structure(c(68.7380523681641, 47.7064208984375, 31.2619514465332, 52.2935752868652), 
        .Dim = c(2L, 2L))))), title = c("Class", "Sex", "Age", "Survived"), total = list(c(325L, 285L, 706L, 885L), c(470L, 
        1731L), c(2092L, 109L), c(1490L, 711L)), aic = structure(c(-174.901361375103, -432.468838278877, -17.5606010280946, 
        NA), .Dim = c(1L, 4L)), aic.order = structure(c(2L, 1L, 3L), .Dim = c(1L, 3L)), ier = 0), class = "catdap1")
    catdap:::print.catdap1(x = x)
}




