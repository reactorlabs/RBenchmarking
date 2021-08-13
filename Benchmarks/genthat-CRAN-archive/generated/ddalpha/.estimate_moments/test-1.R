library(ddalpha)

function_to_run <- function() {
    ddalpha.train <- ddalpha::ddalpha.train
    mtcars <- datasets::mtcars
    ddalpha <- list(call = ddalpha.train(formula = I(mpg >= 19.2) ~ log(disp) + I(disp^2) + disp + I(disp * drat), data = mtcars, 
        subset = (carb != 1), depth = "Mahalanobis", separator = "alpha"), colnames = c("I(mpg >= 19.2)", "log(disp)", "I(disp^2)", 
        "disp", "I(disp * drat)"), classif.formula = ~log(disp) + I(disp^2) + disp + I(disp * drat), raw = structure(list(`log(disp)` = c(5.07517381523383, 
        5.07517381523383, 5.88610403145016, 5.88610403145016, 4.98838968514894, 4.94734044372394, 5.12158018804798, 5.12158018804798, 
        5.6196759653592, 5.6196759653592, 5.6196759653592, 6.15697898558556, 6.13122648948314, 6.08677472691231, 4.3267781604434, 
        5.76205138278018, 5.71702770140622, 5.85793315448346, 5.99146454710798, 4.78998862298063, 4.55492896955134, 5.86078622346587, 
        4.97673374242057, 5.70711026474888, 4.79579054559674), `I(disp^2)` = structure(c(25600, 25600, 129600, 129600, 21520.89, 
        19824.64, 28089.76, 28089.76, 76065.64, 76065.64, 76065.64, 222784, 211600, 193600, 5730.49, 101124, 92416, 122500, 
        160000, 14472.09, 9044.01, 123201, 21025, 90601, 14641), class = "AsIs"), disp = c(160, 160, 360, 360, 146.7, 140.8, 
        167.6, 167.6, 275.8, 275.8, 275.8, 472, 460, 440, 75.7, 318, 304, 350, 400, 120.3, 95.1, 351, 145, 301, 121), `I(disp * drat)` = structure(c(624, 
        624, 1134, 1155.6, 541.323, 551.936, 656.992, 656.992, 846.706, 846.706, 846.706, 1382.96, 1380, 1421.2, 373.201, 
        877.68, 957.6, 1305.5, 1232, 532.929, 358.527, 1481.22, 524.9, 1065.54, 497.31), class = "AsIs"), CLASS = structure(c(TRUE, 
        TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, 
        TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE), class = "AsIs")), class = "data.frame", row.names = c("Mazda RX4", "Mazda RX4 Wag", 
        "Hornet Sportabout", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", 
        "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Honda Civic", "Dodge Challenger", 
        "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", "Ferrari Dino", 
        "Maserati Bora", "Volvo 142E")), dimension = 4, numPatterns = 2L, numPoints = 25L, patterns = list(structure(list(index = 1L, 
        points = structure(list(`log(disp)` = c(5.88610403145016, 5.88610403145016, 5.12158018804798, 5.6196759653592, 5.6196759653592, 
            5.6196759653592, 6.15697898558556, 6.13122648948314, 6.08677472691231, 5.76205138278018, 5.71702770140622, 5.85793315448346, 
            5.86078622346587, 5.70711026474888), `I(disp^2)` = structure(c(129600, 129600, 28089.76, 76065.64, 76065.64, 
            76065.64, 222784, 211600, 193600, 101124, 92416, 122500, 123201, 90601), class = "AsIs"), disp = c(360, 360, 
            167.6, 275.8, 275.8, 275.8, 472, 460, 440, 318, 304, 350, 351, 301), `I(disp * drat)` = structure(c(1134, 1155.6, 
            656.992, 846.706, 846.706, 846.706, 1382.96, 1380, 1421.2, 877.68, 957.6, 1305.5, 1481.22, 1065.54), class = "AsIs")), 
            row.names = c("Hornet Sportabout", "Duster 360", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", 
                "Lincoln Continental", "Chrysler Imperial", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Ford Pantera L", 
                "Maserati Bora"), class = "data.frame"), name = FALSE, cardinality = 14, depths = structure(c(0, 0, 0, 0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(14L, 2L)), votes = 0), class = "ddalpha.pattern"), 
        structure(list(index = 2L, points = structure(list(`log(disp)` = c(5.07517381523383, 5.07517381523383, 4.98838968514894, 
            4.94734044372394, 5.12158018804798, 4.3267781604434, 5.99146454710798, 4.78998862298063, 4.55492896955134, 4.97673374242057, 
            4.79579054559674), `I(disp^2)` = structure(c(25600, 25600, 21520.89, 19824.64, 28089.76, 5730.49, 160000, 14472.09, 
            9044.01, 21025, 14641), class = "AsIs"), disp = c(160, 160, 146.7, 140.8, 167.6, 75.7, 400, 120.3, 95.1, 145, 
            121), `I(disp * drat)` = structure(c(624, 624, 541.323, 551.936, 656.992, 373.201, 1232, 532.929, 358.527, 524.9, 
            497.31), class = "AsIs")), row.names = c("Mazda RX4", "Mazda RX4 Wag", "Merc 240D", "Merc 230", "Merc 280", "Honda Civic", 
            "Pontiac Firebird", "Porsche 914-2", "Lotus Europa", "Ferrari Dino", "Volvo 142E"), class = "data.frame"), name = TRUE, 
            cardinality = 11, depths = structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(11L, 
                2L)), votes = 0), class = "ddalpha.pattern")), needtransform = 0, classifiers = list(), sameDirections = TRUE, 
        useConvex = FALSE, maxDegree = 3, numChunks = 10, treatments = c("LDA", "KNNAFF", "KNN", "DEPTH.MAHALANOBIS", "RANDEQUAL", 
            "RANDPROP", "IGNORE"), seed = 0, methodDepth = "Mahalanobis", methodSeparator = "alpha", methodAggregation = "majority", 
        methodSeparatorBinary = TRUE, debug = FALSE, mahEstimate = "moment", mahPriors = c(0.56, 0.44))
    ddalpha:::.estimate_moments(ddalpha = ddalpha)
}




