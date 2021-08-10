library(arm)

function_to_run <- function() {
    object <- structure(c(49.1175663211813, -0.0747605437864924, 0.743359925378789, 0.100860624324816, 0.0714371108492237, 
        -3.18967248566801), names = c("(Intercept)", "x1", "x2", "x3", "x4", "x5"))
    arm:::coefplot.default(coefs = object, sds = structure(c(18.6313778453257, 0.365183957467298, 1.51502986711718, 0.510714013705419, 
        0.0428687439715344, 3.28829222734368), names = c("(Intercept)", "x1", "x2", "x3", "x4", "x5")), CI = 1, varnames = c("(Intercept)", 
        "a long name01", "a long name02", "a long name03", "a long name04", "a long name05"))
}




