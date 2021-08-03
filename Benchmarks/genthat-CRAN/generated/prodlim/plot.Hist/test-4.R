library(prodlim)

function_to_run <- function() {
    h <- structure(c(1, 2, 3, 4, 5, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 4, 3, 4), .Dim = 5:4, .Dimnames = list(NULL, c("time",
        "status", "from", "to")), class = "Hist", states = c("1", "2", "3", "4"), cens.type = "uncensored", cens.code = "0",
        model = "multi.states", entry.type = "")
    prodlim:::plot.Hist(x = h, stateLabels = c("Remission\nwithout\nGvHD", "Remission\nwith\nGvHD", "Relapse", "Death\nwithout\nrelapse"),
        arrowLabelSymbol = "alpha", tagBoxes = TRUE, arrowlabel3.x = 35, arrowlabel3.y = 53, arrowlabel4.y = 54, arrowlabel4.x = 68)
}




