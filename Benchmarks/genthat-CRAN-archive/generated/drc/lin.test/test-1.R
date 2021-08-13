

genthat_extracted_call <- function() {
    drm <- drc::drm
    EXD.2 <- drc::EXD.2
    na.omit <- stats::na.omit
    O.mykiss <- drc::O.mykiss
    O.mykiss.m1 <- structure(list(varParm = NULL, fit = list(par = c(2.84679421810296, 111.7386137808), value = 18.4925406609219, 
        counts = structure(c(53L, 16L), names = c("function", "gradient")), convergence = TRUE, message = NULL, hessian = structure(c(106.072279844053, 
            0.164527317270037, 0.164527317270037, 0.000824023057828234), .Dim = c(2L, 2L)), ovalue = 18.4925406609219), curve = list(genthat::with_env(function(dose) {
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
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
    }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, FALSE, TRUE, TRUE)), parent = baseenv())), 
        parmMat = structure(c(2.84679421810296, 111.7386137808), .Dim = 1:2, .Dimnames = list("1", NULL)), numNames = 2L, 
        numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), 
        NULL), summary = c(NA, NA, NA, 18.4925406609219, 59, 61), start = c(4.0031, 94.4759818676186), parNames = list(c("d:(Intercept)", 
        "e:(Intercept)"), c("d", "e"), c("(Intercept)", "(Intercept)")), predres = structure(c(2.84679421810296, 2.84679421810296, 
        2.84679421810296, 2.84679421810296, 2.84679421810296, 2.84679421810296, 2.84679421810296, 2.84679421810296, 2.84679421810296, 
        2.84679421810296, 2.82143061812287, 2.82143061812287, 2.82143061812287, 2.82143061812287, 2.82143061812287, 2.82143061812287, 
        2.82143061812287, 2.82143061812287, 2.82143061812287, 2.82143061812287, 2.79129241130876, 2.79129241130876, 2.79129241130876, 
        2.79129241130876, 2.79129241130876, 2.79129241130876, 2.79129241130876, 2.79129241130876, 2.79129241130876, 2.73197835770822, 
        2.73197835770822, 2.73197835770822, 2.73197835770822, 2.73197835770822, 2.73197835770822, 2.73197835770822, 2.73197835770822, 
        2.73197835770822, 2.73197835770822, 2.60308934218707, 2.60308934218707, 2.60308934218707, 2.60308934218707, 2.60308934218707, 
        2.60308934218707, 2.60308934218707, 2.60308934218707, 2.60308934218707, 2.33802242732626, 2.33802242732626, 2.33802242732626, 
        2.33802242732626, 2.33802242732626, 2.33802242732626, 2.33802242732626, 2.33802242732626, 2.33802242732626, 1.88611370278416, 
        1.88611370278416, 1.88611370278416, 1.88611370278416, -0.0467942181029626, 0.153205781897038, -0.146794218102962, 
        1.05320578189704, 0.253205781897038, -1.04679421810296, 0.0532057818970375, -0.346794218102962, -0.646794218102962, 
        0.253205781897038, -0.121430618122872, 0.478569381877128, 0.078569381877128, -0.621430618122872, -0.821430618122872, 
        0.278569381877128, 0.378569381877128, -0.321430618122872, -0.321430618122872, -0.221430618122872, 0.108707588691243, 
        -0.191292411308757, -0.0912924113087565, 0.508707588691243, -0.0912924113087565, 1.20870758869124, 0.208707588691243, 
        -0.291292411308757, -0.591292411308757, 0.168021642291782, 0.268021642291782, 0.768021642291782, -0.0319783577082182, 
        -0.431978357708219, -0.0319783577082182, -0.731978357708218, 1.26802164229178, -0.531978357708218, -0.331978357708218, 
        0.796910657812926, 0.196910657812926, -0.503089342187073, -0.303089342187074, 0.496910657812927, -0.803089342187074, 
        -0.203089342187074, 0.396910657812926, -0.303089342187074, 0.361977572673736, -0.338022427326265, 1.16197757267374, 
        -0.538022427326265, 0.761977572673735, 0.861977572673736, -0.138022427326264, 0.161977572673735, -0.538022427326265, 
        -0.286113702784156, 0.913886297215844, -0.686113702784156, -0.986113702784156), .Dim = c(61L, 2L), .Dimnames = list(NULL, 
        c("Predicted values", "Residuals"))), call = drm(formula = weight ~ conc, data = O.mykiss, fct = EXD.2(), na.action = na.omit), 
        data = structure(list(conc = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2.2, 2.2, 2.2, 2.2, 2.2, 
            2.2, 2.2, 2.2, 2.2, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 22, 
            22, 22, 22, 22, 22, 22, 22, 22, 46, 46, 46, 46), weight = c(2.8, 3, 2.7, 3.9, 3.1, 1.8, 2.9, 2.5, 2.2, 3.1, 2.7, 
            3.3, 2.9, 2.2, 2, 3.1, 3.2, 2.5, 2.5, 2.6, 2.9, 2.6, 2.7, 3.3, 2.7, 4, 3, 2.5, 2.2, 2.9, 3, 3.5, 2.7, 2.3, 2.7, 
            2, 4, 2.2, 2.4, 3.4, 2.8, 2.1, 2.3, 3.1, 1.8, 2.4, 3, 2.3, 2.7, 2, 3.5, 1.8, 3.1, 3.2, 2.2, 2.5, 1.8, 1.6, 2.8, 
            1.2, 0.9), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", 
            "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", 
            "27", "28", "29", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", 
            "47", "48", "49", "51", "52", "53", "54", "55", "56", "57", "58", "59", "61", "62", "63", "64")), parmMat = structure(c(2.84679421810296, 
            111.7386137808), .Dim = 2:1, .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            ssfct = genthat::with_env(function(dframe) {
                x <- dframe[, 1]
                y <- dframe[, 2]
                cdVal <- findcd(x, y)
                if (useFixed) {
                }
                beVal <- findbe(x, y, cdVal[1], cdVal[2])
                return(c(beVal[1], cdVal, beVal[2])[is.na(fixed)])
            }, env = list2env(list(findbe = genthat::with_env(function(x, y, cVal, dVal) {
                lmFit <- lm(respTr(y, cVal, dVal) ~ doseTr(x))
                coefVec <- coef(lmFit)
                bVal <- sgnb * coefVec[2]
                eVal <- back(-coefVec[1]/(sgnb * bVal))
                return(as.vector(c(bVal, eVal)))
            }, env = list2env(list(sgnb = 1, lm = stats::lm, coef = stats::coef, back = .Primitive("exp")), parent = baseenv())), 
                useFixed = FALSE, fixed = c(1, 0, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("d", "e"), 
            deriv1 = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t3 <- exp(-t2)
                derMat <- as.matrix(cbind(-t1 * divAtInf(xlogx(dose/parmMat[, 4], parmMat[, 1]), exp(t2)), 1 - t3, t3, t1 * 
                  divAtInf(t2, exp(t2)) * parmMat[, 1]/parmMat[, 4]))
                return(derMat[, notFixed])
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, FALSE, 
                TRUE, TRUE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, edfct = genthat::with_env(function(parm, 
                respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log(-log((100 - p)/100))
                EDp <- exp(tempVal/parmVec[1] + log(parmVec[4]))
                EDder <- EDp * c(-tempVal/(parmVec[1]^2), 0, 0, 1/parmVec[4])
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(FALSE, FALSE, TRUE, TRUE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            name = "EXD.2", text = "Exponential decay with lower limit at 0", noParm = 2L, fixed = c(1, 0, NA, NA)), class = "Weibull-1"), 
        robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1), .Dim = c(61L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(61L, 1L))), parmIndex = list(1, 2), numNames = 2L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
                TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
                TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
                TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
            weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, 
            resp = structure(c(2.8, 3, 2.7, 3.9, 3.1, 1.8, 2.9, 2.5, 2.2, 3.1, 2.7, 3.3, 2.9, 2.2, 2, 3.1, 3.2, 2.5, 2.5, 
                2.6, 2.9, 2.6, 2.7, 3.3, 2.7, 4, 3, 2.5, 2.2, 2.9, 3, 3.5, 2.7, 2.3, 2.7, 2, 4, 2.2, 2.4, 3.4, 2.8, 2.1, 
                2.3, 3.1, 1.8, 2.4, 3, 2.3, 2.7, 2, 3.5, 1.8, 3.1, 3.2, 2.2, 2.5, 1.8, 1.6, 2.8, 1.2, 0.9), names = c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", 
                "21", "22", "23", "24", "25", "26", "27", "28", "29", "31", "32", "33", "34", "35", "36", "37", "38", "39", 
                "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "52", "53", "54", "55", "56", "57", "58", 
                "59", "61", "62", "63", "64")), doseScaling = 1, dose = structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 
                4.6, 4.6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 22, 22, 22, 22, 22, 22, 22, 22, 22, 46, 46, 46, 46), names = c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", 
                "21", "22", "23", "24", "25", "26", "27", "28", "29", "31", "32", "33", "34", "35", "36", "37", "38", "39", 
                "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "52", "53", "54", "55", "56", "57", "58", 
                "59", "61", "62", "63", "64"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(), parent = baseenv()))), df.residual = 59L, sumList = list(lenData = 61L, alternative = NULL, 
            df.residual = 59L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1), .Dim = c(61L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(61L, 1L))), parmIndex = list(1, 2), numNames = 2L), parent = baseenv())), uniqueNames = "1", 
            numAss = 1L, cm = NULL, assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1), assayNames = "1"), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            numNames = 2L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), 
            parent = baseenv())), type = "continuous", indexMat = structure(1:2, .Dim = 2:1, .Dimnames = list(NULL, "1")), 
        logDose = NULL, cm = NULL, deriv1 = structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.991090469476578, 0.991090469476578, 
            0.991090469476578, 0.991090469476578, 0.991090469476578, 0.991090469476578, 0.991090469476578, 0.991090469476578, 
            0.991090469476578, 0.991090469476578, 0.980503751749506, 0.980503751749506, 0.980503751749506, 0.980503751749506, 
            0.980503751749506, 0.980503751749506, 0.980503751749506, 0.980503751749506, 0.980503751749506, 0.959668366731736, 
            0.959668366731736, 0.959668366731736, 0.959668366731736, 0.959668366731736, 0.959668366731736, 0.959668366731736, 
            0.959668366731736, 0.959668366731736, 0.959668366731736, 0.914393223659739, 0.914393223659739, 0.914393223659739, 
            0.914393223659739, 0.914393223659739, 0.914393223659739, 0.914393223659739, 0.914393223659739, 0.914393223659739, 
            0.82128255441107, 0.82128255441107, 0.82128255441107, 0.82128255441107, 0.82128255441107, 0.82128255441107, 0.82128255441107, 
            0.82128255441107, 0.82128255441107, 0.662539529829809, 0.662539529829809, 0.662539529829809, 0.662539529829809, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000225976259946635, 0.000225976259946635, 0.000225976259946635, 0.000225976259946635, 
            0.000225976259946635, 0.000225976259946635, 0.000225976259946635, 0.000225976259946635, 0.000225976259946635, 
            0.000225976259946635, 0.00049183729489623, 0.00049183729489623, 0.00049183729489623, 0.00049183729489623, 0.00049183729489623, 
            0.00049183729489623, 0.00049183729489623, 0.00049183729489623, 0.00049183729489623, 0.00100653418120473, 0.00100653418120473, 
            0.00100653418120473, 0.00100653418120473, 0.00100653418120473, 0.00100653418120473, 0.00100653418120473, 0.00100653418120473, 
            0.00100653418120473, 0.00100653418120473, 0.00208488697214799, 0.00208488697214799, 0.00208488697214799, 0.00208488697214799, 
            0.00208488697214799, 0.00208488697214799, 0.00208488697214799, 0.00208488697214799, 0.00208488697214799, 0.00411969244570726, 
            0.00411969244570726, 0.00411969244570726, 0.00411969244570726, 0.00411969244570726, 0.00411969244570726, 0.00411969244570726, 
            0.00411969244570726, 0.00411969244570726, 0.00694894930677054, 0.00694894930677054, 0.00694894930677054, 0.00694894930677054), 
            .Dim = c(61L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", 
                "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "31", "32", "33", 
                "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "52", 
                "53", "54", "55", "56", "57", "58", "59", "61", "62", "63", "64"), c("t3", ""))), curveVarNam = "1", origData = structure(list(conc = c(0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 4.6, 
            4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 22, 22, 22, 22, 22, 22, 
            22, 22, 22, 22, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46), weight = c(2.8, 3, 2.7, 3.9, 3.1, 1.8, 2.9, 2.5, 2.2, 
            3.1, 2.7, 3.3, 2.9, 2.2, 2, 3.1, 3.2, 2.5, 2.5, 2.6, 2.9, 2.6, 2.7, 3.3, 2.7, 4, 3, 2.5, 2.2, NA, 2.9, 3, 3.5, 
            2.7, 2.3, 2.7, 2, 4, 2.2, 2.4, 3.4, 2.8, 2.1, 2.3, 3.1, 1.8, 2.4, 3, 2.3, NA, 2.7, 2, 3.5, 1.8, 3.1, 3.2, 2.2, 
            2.5, 1.8, NA, 1.6, 2.8, 1.2, 0.9, NA, NA, NA, NA, NA, NA)), row.names = c(NA, -70L), class = "data.frame"), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 
            0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 2.2, 4.6, 4.6, 
            4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 4.6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 22, 22, 22, 22, 22, 22, 22, 22, 22, 
            46, 46, 46, 46), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
            "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "31", "32", "33", "34", "35", "36", 
            "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "52", "53", "54", "55", "56", 
            "57", "58", "59", "61", "62", "63", "64")), origResp = c(2.8, 3, 2.7, 3.9, 3.1, 1.8, 2.9, 2.5, 2.2, 3.1, 2.7, 
            3.3, 2.9, 2.2, 2, 3.1, 3.2, 2.5, 2.5, 2.6, 2.9, 2.6, 2.7, 3.3, 2.7, 4, 3, 2.5, 2.2, 2.9, 3, 3.5, 2.7, 2.3, 2.7, 
            2, 4, 2.2, 2.4, 3.4, 2.8, 2.1, 2.3, 3.1, 1.8, 2.4, 3, 2.3, 2.7, 2, 3.5, 1.8, 3.1, 3.2, 2.2, 2.5, 1.8, 1.6, 2.8, 
            1.2, 0.9), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), resp = c(2.8, 3, 2.7, 3.9, 3.1, 1.8, 2.9, 
            2.5, 2.2, 3.1, 2.7, 3.3, 2.9, 2.2, 2, 3.1, 3.2, 2.5, 2.5, 2.6, 2.9, 2.6, 2.7, 3.3, 2.7, 4, 3, 2.5, 2.2, 2.9, 
            3, 3.5, 2.7, 2.3, 2.7, 2, 4, 2.2, 2.4, 3.4, 2.8, 2.1, 2.3, 3.1, 1.8, 2.4, 3, 2.3, 2.7, 2, 3.5, 1.8, 3.1, 3.2, 
            2.2, 2.5, 1.8, 1.6, 2.8, 1.2, 0.9), names = list(dName = "conc", orName = "weight", wName = "weights", cNames = "1", 
            rName = "")), coefficients = structure(c(2.84679421810296, 111.7386137808), names = c("d:(Intercept)", "e:(Intercept)")), 
        boxcox = NULL, indexMat2 = c(1, 2)), class = "drc")
    drc:::lin.test(object = O.mykiss.m1, log = "", xlab = "Dose (mg/l)", ylim = c(-0.6, 0.6), cl = 0.2, main = "B")
}




