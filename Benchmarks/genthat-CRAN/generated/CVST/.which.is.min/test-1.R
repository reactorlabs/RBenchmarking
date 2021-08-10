library(CVST)

function_to_run <- function() {
    meanRank <- structure(c(4.5, 4.5, 4.5, 4.5, 4, 4.5, 5.83333333333333, 3.66666666666667), names = c("kernel=rbfdot sigma=0.1 nu=0.05", 
        "kernel=rbfdot sigma=1 nu=0.05", "kernel=rbfdot sigma=0.1 nu=0.1", "kernel=rbfdot sigma=1 nu=0.1", "kernel=rbfdot sigma=0.1 nu=0.2", 
        "kernel=rbfdot sigma=1 nu=0.2", "kernel=rbfdot sigma=0.1 nu=0.3", "kernel=rbfdot sigma=1 nu=0.3"))
    CVST:::.which.is.min(x = meanRank)
}




