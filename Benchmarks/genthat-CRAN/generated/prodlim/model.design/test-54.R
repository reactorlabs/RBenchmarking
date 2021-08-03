library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, event) ~ X1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(4.98296000227596, 4.42477278389173, 1.83485239447402, 4.32402403938166, 3.61436242996879,
        9.18886028768832, 6.70890319331954, 5.20447069014526, 3.57744413559292, 6.21044054274549, 1.8081809817817, 6.18491518562052,
        8.74373969479748, 1.91565441661776, 2.98370116873598, 3.71014771787888, 5.50815483111756, 9.54944515763732, 1.61161863007241,
        4.26075540575908, 6.76830878548763, 10.6857054335166, 6.21272007032523, 3.85995800568604, 3.00924475343897, 5.94526437390329,
        3.54249613303305, 2.98238881121391, 7.2444273615832, 8.07326603318642), event = c(1, 2, 1, 0, 1, 2, 2, 1, 2, 0, 1,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 2, 2, 2, 0, 0, 1, 1, 2, 1), X1 = c(1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1,
        0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1)), row.names = c(NA, 30L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




