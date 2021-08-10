library(biglm)

function_to_run <- function() {
    biglm <- biglm::biglm
    chunk1 <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75), Volume = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9)), row.names = c(NA, 10L), 
        class = "data.frame")
    ff <- log(Volume) ~ log(Girth) + log(Height)
    se.fit <- FALSE
    object <- structure(list(call = biglm(ff, chunk1), qr = structure(list(D = c(31, 1.637533565667, 0.158482336758735), 
        rbar = c(2.55733343471497, 4.32723209681184, 0.194535388674822), thetab = c(3.272731722267, 2.1999699320931, 1.11712333313337), 
        ss = 0.185463372769671, checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"), assign = 0:2, terms = log(Volume) ~ 
        log(Girth) + log(Height), n = 31L, names = c("(Intercept)", "log(Girth)", "log(Height)"), weights = NULL, df.resid = 7L), 
        class = "biglm")
    newdata <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 
        12.9, 12.9, 13.3, 13.7, 13.8, 14, 14.2, 14.5, 16, 16.3, 17.3, 17.5, 17.9, 18, 18, 20.6), Height = c(70, 65, 63, 72, 
        81, 83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85, 86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80, 80, 87), Volume = c(10.3, 
        10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8, 27.4, 25.7, 24.9, 34.5, 
        31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, 51.5, 51, 77)), class = "data.frame", row.names = c(NA, -31L))
    make.function <- FALSE
    biglm:::predict.bigglm(object = object, newdata = newdata, type = "link", se.fit = se.fit, make.function = make.function)
}




