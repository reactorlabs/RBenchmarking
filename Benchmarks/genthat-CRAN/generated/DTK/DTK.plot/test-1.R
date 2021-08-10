library(DTK)

function_to_run <- function() {
    DTK.result <- list(0.05, structure(c(-1.14599224329787, 10.2050051868763, 11.3509974301742, -3.65156064098414, 7.9062763694004, 
        8.49903480554968, 1.35957615438841, 12.5037340043522, 14.2029600547986), .Dim = c(3L, 3L), .Dimnames = list(c("2-1", 
        "3-1", "3-2"), c("Diff", "Lower CI", "Upper CI"))))
    DTK:::DTK.plot(x = DTK.result)
}




