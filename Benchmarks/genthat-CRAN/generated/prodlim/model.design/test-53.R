library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ X1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(0.751028491262217, 7.64347118490518, 6.65370629975601, 3.63430756589682, 2.72813843472151,
        4.75934018341804, 6.41999506940776, 5.25787199056587, 4.57872508730397, 5.0854691947226, 3.4939918159165, 7.99067276286092,
        11.4384014642223, 0.85690323555647, 1.55066740292543, 4.44729303005845, 4.64955854779207, 4.99979038448156, 0.492967146723343,
        3.71105077263798, 1.5529911630034, 2.92453672792375, 10.152756975698, 9.16814453632736, 2.49957953925262, 9.15741788589595,
        5.78516506840998, 11.2753806784844, 8.98219893552586, 3.09566675772413), status = c(1, 1, 0, 0, 1, 0, 1, 1, 0, 1,
        1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1), X1 = c(1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0,
        1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0)), row.names = c(NA, 30L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




