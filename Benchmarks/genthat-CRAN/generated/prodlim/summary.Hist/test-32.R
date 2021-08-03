library(prodlim)

function_to_run <- function() {
    x <- structure(c(8, 8, 0.646046154253689, 2.33291587630756, 8, 1.31159919645468, 2.62401409349425, 5.52428830848448,
        3.51629385208571, 3.77044291143478, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0), .Dim = c(10L, 3L),
        .Dimnames = list(NULL, c("time", "status", "stopped")), stop.time = 8, class = "Hist", states = "1", model = "survival",
        cens.type = "rightCensored", cens.code = "0", entry.type = "")
    prodlim:::summary.Hist(object = x)
}




