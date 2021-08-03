library(prodlim)

function_to_run <- function() {
    object <- structure(c(5, 5, 0.646046154253689, 2.33291587630756, 5, 1.31159919645468, 2.62401409349425, 5, 3.51629385208571,
        3.77044291143478, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0), .Dim = c(10L, 3L), .Dimnames = list(NULL,
        c("time", "status", "stopped")), stop.time = 5, class = "Hist", states = "1", model = "survival", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = object, j = "status", drop = TRUE)
}




