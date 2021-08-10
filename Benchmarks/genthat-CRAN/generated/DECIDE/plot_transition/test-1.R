library(DECIDE)

function_to_run <- function() {
    data <- structure(list(seq.1.10. = 1:10, rep.c.1..2...length.out...10. = c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2), c.rep.0..times...3...rep.1..times...7.. = c(0, 
        0, 0, 1, 1, 1, 1, 1, 1, 1), c.rnorm.4..0..1...rnorm.4..0.5..1...NA..NA. = c(-0.626453810742332, 0.183643324222082, 
        -0.835628612410047, 1.59528080213779, 0.829507771815361, -0.320468384118015, 0.987429052428485, 1.23832470512922, 
        NA, NA)), class = "data.frame", row.names = c(NA, -10L))
    DECIDE:::plot_transition(dataset = data)
}




