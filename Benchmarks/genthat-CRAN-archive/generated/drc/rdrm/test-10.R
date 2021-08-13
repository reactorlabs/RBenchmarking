

genthat_extracted_call <- function() {
    sigma <- 0.519625568483239
    noSim <- 2
    mpar <- structure(c(2.98221907127499, 0.481413188446089, 7.79295829369992, 3.05795496654811), names = c("b:(Intercept)", 
        "c:(Intercept)", "d:(Intercept)", "e:(Intercept)"))
    LL.4 <- drc::LL.4
    cVec2 <- c(0.23, 0.23, 0.23, 0.47, 0.47, 0.47, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 
        15, 15, 30, 30, 30, 60, 60, 60)
    drc:::rdrm(nosim = noSim, fct = LL.4(), mpar = mpar, xerror = cVec2, ypar = sigma)
}




