

genthat_extracted_call <- function() {
    biglm <- biglm::biglm
    chunk1 <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75), Volume = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9)), row.names = c(NA, 10L), 
        class = "data.frame")
    ff <- log(Volume) ~ log(Girth) + log(Height)
    object <- structure(list(call = biglm(ff, chunk1), qr = structure(list(D = c(31, 1.637533565667, 0.158482336758735), 
        rbar = c(2.55733343471497, 4.32723209681184, 0.194535388674822), thetab = c(3.272731722267, 2.1999699320931, 1.11712333313337), 
        ss = 0.185463372769671, checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"), assign = 0:2, terms = log(Volume) ~ 
        log(Girth) + log(Height), n = 31L, names = c("(Intercept)", "log(Girth)", "log(Height)"), weights = NULL, df.resid = 7L), 
        class = "biglm")
    biglm:::deviance.biglm(object = object)
}




