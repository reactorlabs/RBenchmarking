

genthat_extracted_call <- function() {
    x <- structure(list(label = "bcnPower transformation to Multinormality \n", result = structure(c(0.554018414632489, 0.515961498008488, 
        0.5, 0.5, 0.312108491637075, 0.22038014632955, 0.795928337627904, 0.811542849687425), .Dim = c(2L, 4L), .Dimnames = list(c("Y1", 
        "Y2"), c("Est Power", "Rounded Pwr", "Wald Lwr Bnd", "Wald Upr Bnd"))), result.gamma = structure(c(13.5843560280003, 
        17.6866643559996, 9.45460777679072, 12.5295211064943, 0, 0, 32.1153872705101, 42.2445257247284), .Dim = c(2L, 4L), 
        .Dimnames = list(c("Y1", "Y2"), c("Est gamma", "Std Err.", "Wald Lower Bound", "Wald Upper Bound"))), tests = structure(list(LRT = c(119.247920888279, 
        99.3573375416316), df = c(2L, 2L), pval = c(0, 0)), row.names = c("LR test, lambda = (0 0)", "LR test, lambda = (1 1)"), 
        class = "data.frame"), gamma.estimated = c(TRUE, TRUE)), class = "summary.bcnPowerTransform")
    car:::print.summary.bcnPowerTransform(x = x)
}




