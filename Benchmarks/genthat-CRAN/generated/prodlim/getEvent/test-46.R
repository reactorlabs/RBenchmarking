library(prodlim)

function_to_run <- function() {
    object <- structure(c(8.08489580759416, 14.2340952093652, 0.646046154253689, 2.33291587630756, 8.41890206264328, 1.31159919645468,
        2.62401409349425, 5.52428830848448, 3.51629385208571, 3.77044291143478, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1), .Dim = c(10L,
        2L), .Dimnames = list(NULL, c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0",
        model = "survival", entry.type = "")
    model <- "survival"
    prodlim:::getEvent(object = object, mode = "factor", column = ifelse(model == "survival", "status", "event"))
}




