

genthat_extracted_call <- function() {
    drm <- drc::drm
    lgaussian <- drc::lgaussian
    metals <- drc::metals
    object <- structure(list(varParm = NULL, fit = list(par = c(0.351995752329575, 1.47596470217159, 80.0999599467005, 2.24510229973095, 
        2.66233905617262), value = 0.807704874418236, counts = structure(c(96L, 56L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(584.208880272846, 4.19218013570634, 0.89968829816062, -40.7832411997262, 
            -25.6473857979406, 4.19218013570634, 0.29651630837576, 0.00361127194938461, -0.00820267628865588, -0.333023816326728, 
            0.89968829816062, 0.00361127194938461, 0.00239883108741011, -0.101231546754993, -0.0293050453175581, -40.7832411997262, 
            -0.00820267628865588, -0.101231546754993, 63.2969381192111, -0.841095438776265, -25.6473857979406, -0.333023816326728, 
            -0.0293050453175581, -0.841095438776265, 1.4479023828784), .Dim = c(5L, 5L)), ovalue = 0.807704874418236), curve = list(genthat::with_env(function(dose) {
        if (is.vector(dose)) {
            lenPts <- length(dose)
        } else {
            lenPts <- nrow(dose)
        }
        curvePts <- matrix(NA, lenPts, ciOrigLength)
        for (i in 1:numAss) {
            if (i %in% iVec) {
                parmChosen <- parmMat[i, complete.cases(parmMat[i, ])]
                parmMat2 <- matrix(parmChosen, lenPts, numNames, byrow = TRUE)
                curvePts[, ciOrigIndex[i]] <- drcFct(dose, parmMat2)
            } else {
                curvePts[, i] <- rep(NA, lenPts)
            }
        }
        return(curvePts)
    }, env = list2env(list(drcFct = genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5])
    }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e, f) {
        .expr1 <- d - c
        .expr5 <- log(dose) - log(e)
        .expr6 <- .expr5/b
        .expr7 <- .expr6^2
        .expr8 <- sqrt(.expr7)
        .expr9 <- .expr8^f
        .expr11 <- exp(-0.5 * .expr9)
        .expr15 <- .expr8^(f - 1)
        .expr20 <- .expr7^-0.5
        .value <- c + .expr1 * .expr11
        .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
        .grad[, "b"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (.expr5/b^2 * .expr6) * .expr20))))))
        .grad[, "c"] <- 1 - .expr11
        .grad[, "d"] <- .expr11
        .grad[, "e"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (1/e/b * .expr6) * .expr20))))))
        .grad[, "f"] <- -(.expr1 * (.expr11 * (0.5 * (.expr9 * log(.expr8)))))
        attr(.value, "gradient") <- .grad
        .value
    }, env = list2env(list(), parent = baseenv())), parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, 
        TRUE, TRUE)), parent = baseenv())), parmMat = structure(c(0.351995752329575, 1.47596470217159, 80.0999599467005, 
        2.24510229973095, 2.66233905617262), .Dim = c(1L, 5L), .Dimnames = list("1", NULL)), numNames = 5L, numAss = 1L, 
        iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), 
        summary = c(NA, NA, NA, 0.807704874418236, 28, 33), start = c(0.247649128855937, 0.257180769373, 86.104907143627, 
            2.0371, 1), parNames = list(c("b:(Intercept)", "c:(Intercept)", "d:(Intercept)", "e:(Intercept)", "f:(Intercept)"), 
            c("b", "c", "d", "e", "f"), c("(Intercept)", "(Intercept)", "(Intercept)", "(Intercept)", "(Intercept)")), predres = structure(c(2.44025482231895, 
            2.44025482231895, 2.44025482231895, 2.44025482231895, 2.44025482231895, 2.44025482231895, 2.44025482231895, 2.44025482231895, 
            2.44025482231895, 2.44025487376521, 2.44025487376521, 2.44025487376521, 2.48200095000213, 2.48200095000213, 2.48200095000213, 
            3.58167769228606, 3.58167769228606, 3.58167769228606, 3.77076517724267, 3.77076517724267, 3.77076517724267, 4.48673803667355, 
            4.48673803667355, 4.48673803667355, 4.06221834514566, 4.06221834514566, 4.06221834514566, 2.72161506668189, 2.72161506668189, 
            2.72161506668189, 2.44025482233782, 2.44025482233782, 2.44025482233782, -0.0501822752279697, -0.0445793062677846, 
            -0.0517272995641829, -0.0466979511539636, -0.0535079370480402, -0.0273216721261917, -0.0466979511539636, -0.0269577049374603, 
            -0.023311354508722, 0.0238009805101886, 0.015783791990561, 0.0274099695991574, 0.289396586870478, 0.201356638478042, 
            0.215739881430856, -0.391789404114642, -0.190284310827259, -0.0941458006848803, 0.217292514461469, 0.219827880095146, 
            0.203293219104924, -0.14132599028836, -0.0547604715420675, 0.0778104552536458, -0.344705158282625, 0.203548483480855, 
            0.25012836895209, -0.0907545042502345, -0.0250122513986497, 0.0117529424296094, -0.10395867198765, -0.0807823549094646, 
            -0.0725304271800198), .Dim = c(33L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = BIF ~ 
            conc, data = subset(metals, metal == "Zn"), fct = lgaussian(), bcVal = 0, bcAdd = 10), data = structure(list(conc = c(0.0369, 
            0.0369, 0.0369, 0.0925, 0.0925, 0.0925, 0.1859, 0.1859, 0.1859, 0.5693, 0.5693, 0.5693, 0.9684, 0.9684, 0.9684, 
            1.3836, 1.3836, 1.3836, 1.4472, 1.4472, 1.4472, 2.0371, 2.0371, 2.0371, 3.2111, 3.2111, 3.2111, 4.4946, 4.4946, 
            4.4946, 10.7532, 10.7532, 10.7532), BIF = c(0.914285714, 0.975609756, 0.897435897, 0.952380952, 0.87804878, 1.166666667, 
            0.952380952, 1.170731707, 1.211538462, 1.752380952, 1.658536585, 1.794871795, 5.980952381, 4.634146341, 4.846153846, 
            14.28571429, 19.70731707, 22.70512821, 43.95, 44.08695652, 43.2, 67.12380952, 74.09756098, 86.01923077, 31.16190476, 
            61.2195122, 64.61538462, 3.885714286, 4.829268293, 5.384615385, 0.342857143, 0.585365854, 0.673076923), `1` = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", 
            row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", 
                "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33")), parmMat = structure(c(0.351995752329575, 
            1.47596470217159, 80.0999599467005, 2.24510229973095, 2.66233905617262), .Dim = c(5L, 1L), .Dimnames = list(NULL, 
            "1")), fct = structure(list(fct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5])
        }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e, f) {
            .expr1 <- d - c
            .expr5 <- log(dose) - log(e)
            .expr6 <- .expr5/b
            .expr7 <- .expr6^2
            .expr8 <- sqrt(.expr7)
            .expr9 <- .expr8^f
            .expr11 <- exp(-0.5 * .expr9)
            .expr15 <- .expr8^(f - 1)
            .expr20 <- .expr7^-0.5
            .value <- c + .expr1 * .expr11
            .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
            .grad[, "b"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (.expr5/b^2 * .expr6) * .expr20))))))
            .grad[, "c"] <- 1 - .expr11
            .grad[, "d"] <- .expr11
            .grad[, "e"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (1/e/b * .expr6) * .expr20))))))
            .grad[, "f"] <- -(.expr1 * (.expr11 * (0.5 * (.expr9 * log(.expr8)))))
            attr(.value, "gradient") <- .grad
            .value
        }, env = list2env(list(), parent = baseenv())), parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, 
            TRUE, TRUE, TRUE)), parent = baseenv())), ssfct = genthat::with_env(function(dframe) {
            x <- dframe[, 1]
            y <- dframe[, 2]
            cdVal <- findcd(x, y)
            if (useFixed) {
            }
            if (logg) {
                bVal <- 0.75 * sd(log(x[y > quantile(y, 0.75)]))
            } else {
                bVal <- 0.75 * sd(x[y > quantile(y, 0.75)])
            }
            befVal <- c(bVal, x[which.max(y)], 1)
            return(c(befVal[1], cdVal, befVal[2:3])[is.na(fixed)])
        }, env = list2env(list(useFixed = FALSE, sd = stats::sd, quantile = stats::quantile, logg = TRUE, fixed = c(NA, NA, 
            NA, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("b", "c", "d", "e", "f"), deriv1 = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            attr(fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5]), "gradient")[, notFixed]
        }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e, f) {
            .expr1 <- d - c
            .expr5 <- log(dose) - log(e)
            .expr6 <- .expr5/b
            .expr7 <- .expr6^2
            .expr8 <- sqrt(.expr7)
            .expr9 <- .expr8^f
            .expr11 <- exp(-0.5 * .expr9)
            .expr15 <- .expr8^(f - 1)
            .expr20 <- .expr7^-0.5
            .value <- c + .expr1 * .expr11
            .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
            .grad[, "b"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (.expr5/b^2 * .expr6) * .expr20))))))
            .grad[, "c"] <- 1 - .expr11
            .grad[, "d"] <- .expr11
            .grad[, "e"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (1/e/b * .expr6) * .expr20))))))
            .grad[, "f"] <- -(.expr1 * (.expr11 * (0.5 * (.expr9 * log(.expr8)))))
            attr(.value, "gradient") <- .grad
            .value
        }, env = list2env(list(), parent = baseenv())), parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, 
            TRUE, TRUE, TRUE)), parent = baseenv())), deriv2 = NULL, derivx = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            dFct <- function(dose, b, c, d, e, f) {
                .expr1 <- d - c
                .expr6 <- (log(dose) - log(e))/b
                .expr7 <- .expr6^2
                .expr8 <- sqrt(.expr7)
                .expr11 <- exp(-0.5 * .expr8^f)
                .value <- c + .expr1 * .expr11
                .grad <- array(0, c(length(.value), 1L), list(NULL, c("dose")))
                .grad[, "dose"] <- -(.expr1 * (.expr11 * (0.5 * (.expr8^(f - 1) * (f * (0.5 * (2 * (1/dose/b * .expr6) * 
                  .expr7^-0.5)))))))
                attr(.value, "gradient") <- .grad
                .value
            }
            attr(dFct(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5]), "gradient")
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- absToRel(parmVec, abs(respl), type)
                if (identical(type, "absolute")) {
                  p <- 100 - p
                }
                if (identical(type, "relative") && (parmVec[1] < 0) && (reference == "control")) {
                  p <- 100 - p
                }
                pProp <- 1 - (100 - p)/100
                EDfct <- function(b, c, d, e, f) {
                  .expr2 <- -2 * log(pProp)
                  .expr4 <- .expr2^(1/f)
                  .expr6 <- exp(sign(respl) * b * .expr4)
                  .value <- .expr6 * e
                  .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
                  .grad[, "b"] <- .expr6 * .expr4 * e
                  .grad[, "c"] <- 0
                  .grad[, "d"] <- 0
                  .grad[, "e"] <- .expr6
                  .grad[, "f"] <- -(.expr6 * (b * (.expr4 * (log(.expr2) * (1/f^2)))) * e)
                  attr(.value, "gradient") <- .grad
                  .value
                }
                EDp <- EDfct(parmVec[1], parmVec[2], parmVec[3], parmVec[4], parmVec[5])
                EDder <- attr(EDfct(parmVec[1], parmVec[2], parmVec[3], parmVec[4], parmVec[5]), "gradient")
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, TRUE, TRUE, TRUE), absToRel = drc:::absToRel), parent = baseenv())), 
            name = "lgaussian", text = "Log-Gaussian", noParm = 5L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), monoton = NA, 
            fixed = c(NA, NA, NA, NA, NA)), class = "lgaussian"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
            degfre <- object$sumList$lenData
            c(-(degfre/2) * (log(2 * pi) + log(object$fit$value) - log(degfre) + 1), object$sumList$lenData - object$sumList$df.residual + 
                1)
        }, env = list2env(list(), parent = baseenv())), opfct = genthat::with_env(function(parm) {
            sum(robustFct(((resp/respScaling) - multCurves((dose/doseScaling), parm)) * weights), na.rm = rmNA)
        }, env = list2env(list(robustFct = genthat::with_env(function(x) {
            x * x
        }, env = list2env(list(), parent = baseenv())), multCurves = genthat::with_env(function(dose, parm) {
            drcFct1(dose, parm)
        }, env = list2env(list(drcFct1 = genthat::with_env(function(dose, parm) {
            parmVal <- parm2mat(parm)
            if ((!is.null(pshifts)) & all(dim(pshifts) == dim(parmVal))) {
                parmVal <- parmVal + pshifts
            }
            drcFct(dose, parmVal[isFinite, , drop = FALSE])
        }, env = list2env(list(parm2mat = genthat::with_env(function(parm) {
            for (i in 1:numNames) {
                parmMatrix[, i] <- pmodelsList2[[i]] %*% parm[parmIndex[[i]]]
            }
            return(parmMatrix)
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 
            1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(33L, 1L))), parmIndex = list(1, 2, 3, 4, 5), numNames = 5L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5])
        }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e, f) {
            .expr1 <- d - c
            .expr5 <- log(dose) - log(e)
            .expr6 <- .expr5/b
            .expr7 <- .expr6^2
            .expr8 <- sqrt(.expr7)
            .expr9 <- .expr8^f
            .expr11 <- exp(-0.5 * .expr9)
            .expr15 <- .expr8^(f - 1)
            .expr20 <- .expr7^-0.5
            .value <- c + .expr1 * .expr11
            .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
            .grad[, "b"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (.expr5/b^2 * .expr6) * .expr20))))))
            .grad[, "c"] <- 1 - .expr11
            .grad[, "d"] <- .expr11
            .grad[, "e"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (1/e/b * .expr6) * .expr20))))))
            .grad[, "f"] <- -(.expr1 * (.expr11 * (0.5 * (.expr9 * log(.expr8)))))
            attr(.value, "gradient") <- .grad
            .value
        }, env = list2env(list(), parent = baseenv())), parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, 
            TRUE, TRUE, TRUE)), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), weights = c(1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, 
            resp = structure(c(2.39007254709098, 2.39567551605117, 2.38852752275477, 2.39355687116499, 2.38674688527091, 
                2.41293315019276, 2.39355687116499, 2.41329711738149, 2.41694346781023, 2.46405585427539, 2.45603866575577, 
                2.46766484336436, 2.77139753687261, 2.68335758848017, 2.69774083143299, 3.18988828817142, 3.3913933814588, 
                3.48753189160118, 3.98805769170414, 3.99059305733782, 3.9740583963476, 4.34541204638519, 4.43197756513148, 
                4.56454849192719, 3.71751318686303, 4.26576682862651, 4.31234671409775, 2.63086056243166, 2.69660281528324, 
                2.7333680091115, 2.33629615035017, 2.35947246742835, 2.3677243951578), names = c("1", "2", "3", "4", "5", 
                "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", 
                "25", "26", "27", "28", "29", "30", "31", "32", "33")), doseScaling = 1, dose = structure(c(0.0369, 0.0369, 
                0.0369, 0.0925, 0.0925, 0.0925, 0.1859, 0.1859, 0.1859, 0.5693, 0.5693, 0.5693, 0.9684, 0.9684, 0.9684, 1.3836, 
                1.3836, 1.3836, 1.4472, 1.4472, 1.4472, 2.0371, 2.0371, 2.0371, 3.2111, 3.2111, 3.2111, 4.4946, 4.4946, 4.4946, 
                10.7532, 10.7532, 10.7532), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
                "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", 
                "32", "33"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
            object$fit$value/df.residual(object)
        }, env = list2env(list(df.residual = stats::df.residual), parent = baseenv())), vcovfct = genthat::with_env(function(object) {
            scaledH <- (object$fit$hessian)/(2 * rvfct(object))
            invMat <- try(solve(scaledH), silent = TRUE)
            if (inherits(invMat, "try-error")) {
                ch <- try(chol(scaledH))
                if (inherits(ch, "try-error")) {
                  ch <- try(chol(0.99 * object$fit$hessian + 0.01 * diag(dim(object$fit$hessian)[1])))
                }
                if (!inherits(ch, "try-error")) return(chol2inv(ch))
            } else {
                return(invMat)
            }
        }, env = list2env(list(rvfct = genthat::with_env(function(object) {
            object$fit$value/df.residual(object)
        }, env = list2env(list(df.residual = stats::df.residual), parent = baseenv()))), parent = baseenv())), parmfct = genthat::with_env(function(fit, 
            fixed = TRUE) {
            fit$par
        }, env = list2env(list(), parent = baseenv())), rstanfct = genthat::with_env(function(object) {
            rep(1, object$sumList$lenData) * sqrt(summary(object)$resVar)
        }, env = list2env(list(), parent = baseenv()))), df.residual = 28L, sumList = list(lenData = 33L, alternative = NULL, 
            df.residual = 28L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
            if (!is.null(cm)) {
                iVec <- (1:numAss)[!(uniqueNames == cm)]
            } else {
                iVec <- 1:numAss
            }
            if (!is.null(cm)) {
                parmMat[-iVec, upperPos] <- (parm2mat(fixedParm))[assayNoOld == cm, , drop = FALSE][1, upperPos]
            }
            rownames(parmMat) <- assayNames
            return(parmMat)
        }, env = list2env(list(parm2mat = genthat::with_env(function(parm) {
            for (i in 1:numNames) {
                parmMatrix[, i] <- pmodelsList2[[i]] %*% parm[parmIndex[[i]]]
            }
            return(parmMatrix)
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 1L)), structure(c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(33L, 
            1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(33L, 1L))), parmIndex = list(1, 2, 3, 4, 5), numNames = 5L), parent = baseenv())), uniqueNames = "1", 
            numAss = 1L, cm = NULL, assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
            plotFct <- function(dose) {
                if (is.vector(dose)) {
                  lenPts <- length(dose)
                } else {
                  lenPts <- nrow(dose)
                }
                curvePts <- matrix(NA, lenPts, ciOrigLength)
                for (i in 1:numAss) {
                  if (i %in% iVec) {
                    parmChosen <- parmMat[i, complete.cases(parmMat[i, ])]
                    parmMat2 <- matrix(parmChosen, lenPts, numNames, byrow = TRUE)
                    curvePts[, ciOrigIndex[i]] <- drcFct(dose, parmMat2)
                  } else {
                    curvePts[, i] <- rep(NA, lenPts)
                  }
                }
                return(curvePts)
            }
            return(plotFct)
        }, env = list2env(list(drcFct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4], parmMat[, 5])
        }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e, f) {
            .expr1 <- d - c
            .expr5 <- log(dose) - log(e)
            .expr6 <- .expr5/b
            .expr7 <- .expr6^2
            .expr8 <- sqrt(.expr7)
            .expr9 <- .expr8^f
            .expr11 <- exp(-0.5 * .expr9)
            .expr15 <- .expr8^(f - 1)
            .expr20 <- .expr7^-0.5
            .value <- c + .expr1 * .expr11
            .grad <- array(0, c(length(.value), 5L), list(NULL, c("b", "c", "d", "e", "f")))
            .grad[, "b"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (.expr5/b^2 * .expr6) * .expr20))))))
            .grad[, "c"] <- 1 - .expr11
            .grad[, "d"] <- .expr11
            .grad[, "e"] <- .expr1 * (.expr11 * (0.5 * (.expr15 * (f * (0.5 * (2 * (1/e/b * .expr6) * .expr20))))))
            .grad[, "f"] <- -(.expr1 * (.expr11 * (0.5 * (.expr9 * log(.expr8)))))
            attr(.value, "gradient") <- .grad
            .value
        }, env = list2env(list(), parent = baseenv())), parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, TRUE, 
            TRUE, TRUE, TRUE)), parent = baseenv())), numNames = 5L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
            ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), type = "continuous", indexMat = structure(1:5, .Dim = c(5L, 
            1L), .Dimnames = list(NULL, "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(5.28099544336009e-146, 5.28099544336009e-146, 
            5.28099544336009e-146, 1.90388406393e-72, 1.90388406393e-72, 1.90388406393e-72, 9.46430075999337e-36, 9.46430075999337e-36, 
            9.46430075999337e-36, 8.35365507665902e-05, 8.35365507665902e-05, 8.35365507665902e-05, 18.7957468399439, 18.7957468399439, 
            18.7957468399439, 216.015522946367, 216.015522946367, 216.015522946367, 217.621519914696, 217.621519914696, 217.621519914696, 
            9.51842268141131, 9.51842268141131, 9.51842268141131, 184.266561883173, 184.266561883173, 184.266561883173, 85.9808077372852, 
            85.9808077372852, 85.9808077372852, 4.35885256895365e-08, 4.35885256895365e-08, 4.35885256895365e-08, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 0.999999992490901, 0.999999992490901, 0.999999992490901, 0.993777758197184, 0.993777758197184, 
            0.993777758197184, 0.688926881092995, 0.688926881092995, 0.688926881092995, 0.59379695504634, 0.59379695504634, 
            0.59379695504634, 0.01613694805449, 0.01613694805449, 0.01613694805449, 0.406960991790631, 0.406960991790631, 
            0.406960991790631, 0.952573071706557, 0.952573071706557, 0.952573071706557, 0.999999999997246, 0.999999999997246, 
            0.999999999997246, 2.56105178654655e-151, 2.56105178654655e-151, 2.56105178654655e-151, 1.81180426375853e-77, 
            1.81180426375853e-77, 1.81180426375853e-77, 1.73838924103179e-40, 1.73838924103179e-40, 1.73838924103179e-40, 
            7.50909942583312e-09, 7.50909942583312e-09, 7.50909942583312e-09, 0.00622224180281563, 0.00622224180281563, 0.00622224180281563, 
            0.311073118907005, 0.311073118907005, 0.311073118907005, 0.40620304495366, 0.40620304495366, 0.40620304495366, 
            0.98386305194551, 0.98386305194551, 0.98386305194551, 0.593039008209369, 0.593039008209369, 0.593039008209369, 
            0.0474269282934425, 0.0474269282934425, 0.0474269282934425, 2.75368584366358e-12, 2.75368584366358e-12, 2.75368584366358e-12, 
            -2.01537320054535e-147, -2.01537320054535e-147, -2.01537320054535e-147, -9.35937231793886e-74, -9.35937231793886e-74, 
            -9.35937231793886e-74, -5.95613089707082e-37, -5.95613089707082e-37, -5.95613089707082e-37, -9.54536265014391e-06, 
            -9.54536265014391e-06, -9.54536265014391e-06, -3.50458495032415, -3.50458495032415, -3.50458495032415, -69.9656700830816, 
            -69.9656700830816, -69.9656700830816, -77.6997249192472, -77.6997249192472, -77.6997249192472, -15.3494710598934, 
            -15.3494710598934, -15.3494710598934, 80.7293890835981, 80.7293890835981, 80.7293890835981, 19.4206943928671, 
            19.4206943928671, 19.4206943928671, 4.3627094855312e-09, 4.3627094855312e-09, 4.3627094855312e-09, -1.71561763260575e-146, 
            -1.71561763260575e-146, -1.71561763260575e-146, -5.54770956983108e-73, -5.54770956983108e-73, -5.54770956983108e-73, 
            -2.44872526736761e-36, -2.44872526736761e-36, -2.44872526736761e-36, -1.50259533546372e-05, -1.50259533546372e-05, 
            -1.50259533546372e-05, -2.16399259801817, -2.16399259801817, -2.16399259801817, -9.09907570559289, -9.09907570559289, 
            -9.09907570559289, -6.36314586857551, -6.36314586857551, -6.36314586857551, 1.61913697135474, 1.61913697135474, 
            1.61913697135474, -0.402702215234893, -0.402702215234893, -0.402702215234893, -7.71910541573552, -7.71910541573552, 
            -7.71910541573552, -8.60382110031823e-09, -8.60382110031823e-09, -8.60382110031823e-09), .Dim = c(33L, 5L), .Dimnames = list(NULL, 
            c("b", "c", "d", "e", "f"))), curveVarNam = "1", origData = structure(list(metal = structure(c(16L, 16L, 16L, 
            16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L, 
            16L, 16L, 16L, 16L, 16L, 16L, 16L, 16L), .Label = c("Ag", "AgCd", "Cd", "Co", "CoAg", "CoCd", "Cu", "CuAg", "CuCd", 
            "CuCo", "CuHg", "CuZn", "Hg", "HgCd", "HgCo", "Zn", "ZnAg", "ZnCd", "ZnCo", "ZnHg"), class = "factor"), conc = c(0.0369, 
            0.0369, 0.0369, 0.0925, 0.0925, 0.0925, 0.1859, 0.1859, 0.1859, 0.5693, 0.5693, 0.5693, 0.9684, 0.9684, 0.9684, 
            1.3836, 1.3836, 1.3836, 1.4472, 1.4472, 1.4472, 2.0371, 2.0371, 2.0371, 3.2111, 3.2111, 3.2111, 4.4946, 4.4946, 
            4.4946, 10.7532, 10.7532, 10.7532), BIF = c(0.914285714, 0.975609756, 0.897435897, 0.952380952, 0.87804878, 1.166666667, 
            0.952380952, 1.170731707, 1.211538462, 1.752380952, 1.658536585, 1.794871795, 5.980952381, 4.634146341, 4.846153846, 
            14.28571429, 19.70731707, 22.70512821, 43.95, 44.08695652, 43.2, 67.12380952, 74.09756098, 86.01923077, 31.16190476, 
            61.2195122, 64.61538462, 3.885714286, 4.829268293, 5.384615385, 0.342857143, 0.585365854, 0.673076923)), row.names = c(NA, 
            33L), class = "data.frame"), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0.0369, 0.0369, 0.0369, 0.0925, 0.0925, 0.0925, 
            0.1859, 0.1859, 0.1859, 0.5693, 0.5693, 0.5693, 0.9684, 0.9684, 0.9684, 1.3836, 1.3836, 1.3836, 1.4472, 1.4472, 
            1.4472, 2.0371, 2.0371, 2.0371, 3.2111, 3.2111, 3.2111, 4.4946, 4.4946, 4.4946, 10.7532, 10.7532, 10.7532), names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33")), origResp = c(0.914285714, 0.975609756, 
            0.897435897, 0.952380952, 0.87804878, 1.166666667, 0.952380952, 1.170731707, 1.211538462, 1.752380952, 1.658536585, 
            1.794871795, 5.980952381, 4.634146341, 4.846153846, 14.28571429, 19.70731707, 22.70512821, 43.95, 44.08695652, 
            43.2, 67.12380952, 74.09756098, 86.01923077, 31.16190476, 61.2195122, 64.61538462, 3.885714286, 4.829268293, 
            5.384615385, 0.342857143, 0.585365854, 0.673076923), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), resp = c(2.39007254709098, 2.39567551605117, 2.38852752275477, 
            2.39355687116499, 2.38674688527091, 2.41293315019276, 2.39355687116499, 2.41329711738149, 2.41694346781023, 2.46405585427539, 
            2.45603866575577, 2.46766484336436, 2.77139753687261, 2.68335758848017, 2.69774083143299, 3.18988828817142, 3.3913933814588, 
            3.48753189160118, 3.98805769170414, 3.99059305733782, 3.9740583963476, 4.34541204638519, 4.43197756513148, 4.56454849192719, 
            3.71751318686303, 4.26576682862651, 4.31234671409775, 2.63086056243166, 2.69660281528324, 2.7333680091115, 2.33629615035017, 
            2.35947246742835, 2.3677243951578), names = list(dName = "conc", orName = "BIF", wName = "weights", cNames = "1", 
            rName = "")), coefficients = structure(c(0.351995752329575, 1.47596470217159, 80.0999599467005, 2.24510229973095, 
            2.66233905617262), names = c("b:(Intercept)", "c:(Intercept)", "d:(Intercept)", "e:(Intercept)", "f:(Intercept)")), 
        boxcox = list(lambda = 0, ci = c(NA, NA), bcAdd = 10), indexMat2 = c(1, 2, 3, 4, 5)), class = "drc")
    level <- 0.95
    EDmat <- structure(c(1.50803755095313, 0.0828488946429344), .Dim = 1:2)
    df.residual <- stats::df.residual
    drc:::confint.basic(estMat = EDmat, level = level, intType = object$type, dfres = df.residual(object), formatting = FALSE)
}




