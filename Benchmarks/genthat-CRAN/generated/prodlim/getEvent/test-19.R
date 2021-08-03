library(prodlim)

function_to_run <- function() {
    object <- structure(c(3.0078595999024, 9.16821902062108, 0.723817486990457, 7.48737362740717, 1.33164902358783, 1.62053846645899,
        4.24845494099889, 0.625669237908281, 4.33562282501955, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(NULL,
        c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored", cens.code = "0",
        entry.type = "")
    model <- "survival"
    prodlim:::getEvent(object = object, mode = "factor", column = ifelse(model == "survival", "status", "event"))
}




