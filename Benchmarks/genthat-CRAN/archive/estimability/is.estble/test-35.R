library(estimability)

function_to_run <- function() {
    nb <- structure(c(0.795587079770735, -0.489592049089684, -0.183597018408632, 0.305995030681053, -0.577350269189627, -0.577350269189625, 
        5.55111512312578e-17, 0.577350269189626), .Dim = c(4L, 2L))
    lfs <- structure(c(1, 2, 1, 0, 4, 3, 2, 1, 2, 9, 2, -1, 5, 5, 1, 1), .Dim = c(4L, 4L))
    estimability:::is.estble(x = lfs, nbasis = nb)
}




