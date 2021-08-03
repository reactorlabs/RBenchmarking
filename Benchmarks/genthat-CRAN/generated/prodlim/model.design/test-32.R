library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ patnr
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(3.69882683846148, 5.43372275632054, 6.40601502930119, 2.58517892604418, 3.04397633011161,
        2.58143830570872, 3.80593717359634, 0.595491010255675, 5.47253329130713, 1.29455067952448, 7.50085241757985, 5.89288743599613,
        5.4465893651155, 2.80143736152228, 0.750618904075463, 1.2627816917473, 1.8949948933335, 14.9436554156758, 6.65496379630547,
        7.2501236748846), status = c(0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1), patnr = c(2L, 2L, 2L, 3L,
        1L, 2L, 5L, 4L, 2L, 1L, 4L, 4L, 1L, 5L, 5L, 5L, 2L, 5L, 3L, 1L)), row.names = c(NA, 20L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




