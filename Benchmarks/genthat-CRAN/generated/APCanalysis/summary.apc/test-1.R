

genthat_extracted_call <- function() {
    my.apc <- structure(list(Results = structure(list(Model = structure(c(7L, 3L, 1L, 6L, 2L, 4L, 5L), .Label = c("+ B", 
        "+ D", "+ H", "+ I", "+ J", "+ K", "intercept"), class = "factor"), Size = 0:6, RSS = c(2851.2042, 1533.449, 997.8466, 
        491.4964, 160.6414, 8.3445, 4.0604), APC = c(7.9555, 7.9483, 8.2006, 8.2455, 7.9602, 5.9386, 6.2103), Active = structure(c(2L, 
        2L, 2L, 2L, 2L, 2L, 1L), .Label = c(" ", "*  "), class = "factor")), class = "data.frame", row.names = c("", "xH", 
        "xB", "xK", "xD", "xI", "xJ")), Penalties = c(0, 0.613, 1.295, 2.048, 2.881, 3.817, 4.809), Level = 0.2, ErrorType = "EER", 
        k = 11L, maxsize = 6, apc = structure(5.93860463652268, names = "xI"), Ests = structure(c(4.8275, 10.4791666666667, 
            6.68083333333333, 6.49583333333334, -5.25083333333334, -3.5625, -0.597499999999997, 0.377500000000002, 0.312500000000001, 
            0.2725, -0.135833333333332, -0.0741666666666676), names = c("(Intercept)", "xH", "xB", "xK", "xD", "xI", "xJ", 
            "xC", "xF", "xG", "xA", "xE")), ActEffs = "B, D, H, I, K", NonActEffs = "A, C, E, F, G, J"), class = "apc")
    APCanalysis:::summary.apc(object = my.apc)
}




