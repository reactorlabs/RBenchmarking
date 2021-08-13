

genthat_extracted_call <- function() {
    x <- structure(list(SSP = list(measure = structure(c(4753.05882352941, 18066.3529411765, 18066.3529411765, 68670.1176470588), 
        .Dim = c(2L, 2L), .Dimnames = list(c("WL", "SE"), c("WL", "SE"))), `group:measure` = structure(c(116.524509803921, 
        49.4803921568627, 49.4803921568627, 21.0656862745098), .Dim = c(2L, 2L), .Dimnames = list(c("WL", "SE"), c("WL", 
        "SE"))), month = structure(c(330.470588235294, 130.941176470588, -137.176470588235, -367.882352941178, 130.941176470588, 
        51.8823529411767, -54.3529411764708, -145.764705882354, -137.176470588235, -54.3529411764708, 56.9411764705884, 152.705882352942, 
        -367.882352941178, -145.764705882354, 152.705882352942, 409.52941176471), .Dim = c(4L, 4L), .Dimnames = list(c("WL.L", 
        "WL.Q", "SE.L", "SE.Q"), c("WL.L", "WL.Q", "SE.L", "SE.Q"))), `group:month` = structure(c(13.6960784313726, 32.7254901960784, 
        -17.8235294117647, -43.4509803921568, 32.7254901960784, 93.3509803921567, -41.1803921568627, -101.501960784313, -17.8235294117647, 
        -41.1803921568627, 23.3254901960784, 56.7607843137253, -43.4509803921568, -101.501960784313, 56.7607843137253, 138.203921568627), 
        .Dim = c(4L, 4L), .Dimnames = list(c("WL.L", "WL.Q", "SE.L", "SE.Q"), c("WL.L", "WL.Q", "SE.L", "SE.Q")))), SSPE = list(measure = structure(c(370.416666666667, 
        322.166666666667, 322.166666666667, 836.816666666667), .Dim = c(2L, 2L), .Dimnames = list(c("WL", "SE"), c("WL", 
        "SE"))), `group:measure` = structure(c(370.416666666667, 322.166666666667, 322.166666666667, 836.816666666667), .Dim = c(2L, 
        2L), .Dimnames = list(c("WL", "SE"), c("WL", "SE"))), month = structure(c(59.8333333333334, -31.6666666666667, 11, 
        7.33333333333341, -31.6666666666667, 114.766666666667, -24.4666666666667, -16.7333333333333, 11, -24.4666666666667, 
        105.733333333333, 104.533333333333, 7.33333333333341, -16.7333333333333, 104.533333333333, 490.266666666667), .Dim = c(4L, 
        4L), .Dimnames = list(c("WL.L", "WL.Q", "SE.L", "SE.Q"), c("WL.L", "WL.Q", "SE.L", "SE.Q"))), `group:month` = structure(c(59.8333333333334, 
        -31.6666666666667, 11, 7.33333333333341, -31.6666666666667, 114.766666666667, -24.4666666666667, -16.7333333333333, 
        11, -24.4666666666667, 105.733333333333, 104.533333333333, 7.33333333333341, -16.7333333333333, 104.533333333333, 
        490.266666666667), .Dim = c(4L, 4L), .Dimnames = list(c("WL.L", "WL.Q", "SE.L", "SE.Q"), c("WL.L", "WL.Q", "SE.L", 
        "SE.Q")))), P = list(measure = structure(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1), .Dim = c(6L, 2L), .Dimnames = list(c("wl1", 
        "wl2", "wl3", "se1", "se2", "se3"), c("WL", "SE"))), `group:measure` = structure(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
        1, 1), .Dim = c(6L, 2L), .Dimnames = list(c("wl1", "wl2", "wl3", "se1", "se2", "se3"), c("WL", "SE"))), month = structure(c(-1, 
        0, 1, 0, 0, 0, 1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 1, -2, 1), .Dim = c(6L, 4L), .Dimnames = list(c("wl1", 
        "wl2", "wl3", "se1", "se2", "se3"), c("WL.L", "WL.Q", "SE.L", "SE.Q"))), `group:month` = structure(c(-1, 0, 1, 0, 
        0, 0, 1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 1, -2, 1), .Dim = c(6L, 4L), .Dimnames = list(c("wl1", "wl2", 
        "wl3", "se1", "se2", "se3"), c("WL.L", "WL.Q", "SE.L", "SE.Q")))), df = structure(c(1, 2, 1, 2), names = c("measure", 
        "group:measure", "month", "group:month")), error.df = 31L, terms = c("measure", "group:measure", "month", "group:month"), 
        repeated = TRUE, type = "II", test = "Roy", idata = NULL, idesign = NULL, icontrasts = c("contr.sum", "contr.poly"), 
        imatrix = list(measure = structure(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1), .Dim = c(6L, 2L), .Dimnames = list(c("wl1", 
            "wl2", "wl3", "se1", "se2", "se3"), c("WL", "SE"))), month = structure(c(-1, 0, 1, 0, 0, 0, 1, -2, 1, 0, 0, 0, 
            0, 0, 0, -1, 0, 1, 0, 0, 0, 1, -2, 1), .Dim = c(6L, 4L), .Dimnames = list(c("wl1", "wl2", "wl3", "se1", "se2", 
            "se3"), c("WL.L", "WL.Q", "SE.L", "SE.Q")))), singular = FALSE), class = "Anova.mlm")
    car:::print.Anova.mlm(x = x)
}




