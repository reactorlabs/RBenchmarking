library(car)

function_to_run <- function() {
    x <- structure(list(label = "bcPower Transformations to Multinormality \n", result = structure(c(0.145143250499017, 0.239564059982841, 
        -0.7336495726842, -0.295946481503592, 0, 0.33, 0, -0.5, -0.273290316261138, 0.0255243686420847, -1.94083415887536, 
        -0.551081482972082, 0.563576817259172, 0.453603751323596, 0.47353501350696, -0.0408114800351028), .Dim = c(4L, 4L), 
        .Dimnames = list(c("len", "adt", "trks", "sigs1"), c("Est Power", "Rounded Pwr", "Wald Lwr Bnd", "Wald Upr Bnd"))), 
        tests = structure(list(LRT = c(13.1339022491154, 140.585292887696), df = c(4L, 4L), pval = structure(1:2, .Label = c("0.01064", 
            "< 2.22e-16"), class = "factor")), row.names = c("LR test, lambda = (0 0 0 0)", "LR test, lambda = (1 1 1 1)"), 
            class = "data.frame"), family = "bcPower"), class = "summary.powerTransform")
    car:::print.summary.powerTransform(x = x)
}




