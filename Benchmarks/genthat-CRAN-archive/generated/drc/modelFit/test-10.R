

genthat_extracted_call <- function() {
    drm <- drc::drm
    etmotc <- drc::etmotc
    LL.4 <- drc::LL.4
    etmotc.m1 <- structure(list(varParm = NULL, fit = list(par = c(0.936545161595021, 0.222588495904754, 0.649667273139542, 
        11.6675539016133), value = 0.000597804322059947, counts = structure(c(42L, 18L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(0.0947988353971266, -0.225850700939651, 0.420546768278406, 
            0.000563058525734107, -0.225850700939651, 3.53835543005805, 2.08974879085066, 0.0334729182072652, 0.420546768278406, 
            2.08974879085066, 22.2821469882206, 0.0381663264562458, 0.000563058525734107, 0.0334729182072652, 0.0381663264562458, 
            0.000448698768849921), .Dim = c(4L, 4L)), ovalue = 0.0597804322059947), curve = list(genthat::with_env(function(dose) {
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
        parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        cParm <- parmMat[, 2]
        cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
    }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, 
        FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(0.936545161595021, 0.222588495904754, 0.649667273139542, 
        11.6675539016133), .Dim = c(1L, 4L), .Dimnames = list("1", NULL)), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
        ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 0.000597804322059947, 11, 
        15), start = c(1.62423074908602, 0.270268263724, 0.653034544276, 5.3158054524264), parNames = list(c("b:(Intercept)", 
        "c:(Intercept)", "d:(Intercept)", "e:(Intercept)"), c("b", "c", "d", "e"), c("(Intercept)", "(Intercept)", "(Intercept)", 
        "(Intercept)")), predres = structure(c(0.649667273139542, 0.649667273139542, 0.649667273139542, 0.649667273139542, 
        0.649667273139542, 0.649667273139542, 0.649667273139542, 0.649667273139542, 0.633815538392456, 0.614071620064299, 
        0.563051108392125, 0.509812251461657, 0.414957357206259, 0.33271811727073, 0.277422984779099, -0.000369631139541582, 
        0.00298526886045847, 3.60188604584533e-05, -0.00144264513954151, -0.00364387413954148, -0.0037837961395415, -0.000412886139541491, 
        -0.00590599213954157, 0.0109603326075445, 0.0086089159357009, -5.65823921245823e-05, -0.0130027204616572, 0.0023434007937414, 
        0.0104570397292701, -0.00677271877909941), .Dim = c(15L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), 
        call = drm(formula = rgr1 ~ dose1, data = etmotc[1:15, ], fct = LL.4()), data = structure(list(dose1 = c(0, 0, 0, 
            0, 0, 0, 0, 0, 0.36072, 0.9018, 2.7054, 5.4108, 14.4288, 36.072, 90.18), rgr1 = c(0.649297642, 0.652652542, 0.649703292, 
            0.648224628, 0.646023399, 0.645883477, 0.649254387, 0.643761281, 0.644775871, 0.622680536, 0.562994526, 0.496809531, 
            0.417300758, 0.343175157, 0.270650266), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", 
            row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15")), parmMat = structure(c(0.936545161595021, 
            0.222588495904754, 0.649667273139542, 11.6675539016133), .Dim = c(4L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), 
            ssfct = genthat::with_env(function(dframe) {
                ncoldf <- ncol(dframe)
                x <- dframe[, 1]
                y <- dframe[, ncoldf]
                cdVal <- findcd(x, y)
                beVal <- findbe(x, y, cdVal[1], cdVal[2])
                fVal <- 1
                return(c(beVal[1], cdVal, beVal[2], fVal)[is.na(fixed)])
            }, env = list2env(list(findbe = genthat::with_env(function(x, y, cVal, dVal) {
                lmFit <- lm(respTr(y, cVal, dVal) ~ doseTr(x))
                coefVec <- coef(lmFit)
                bVal <- sgnb * coefVec[2]
                eVal <- back(-coefVec[1]/(sgnb * bVal))
                return(as.vector(c(bVal, eVal)))
            }, env = list2env(list(sgnb = 1, lm = stats::lm, coef = stats::coef, back = .Primitive("exp")), parent = baseenv())), 
                fixed = c(NA, NA, NA, NA, 1), findcd = drc:::findcd), parent = baseenv())), names = c("b", "c", "d", "e"), 
            deriv1 = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t5 <- (1 + t2)^parmMat[, 5]
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * 
                  parmMat[, 5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + 
                  t2), t5))[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, 
                TRUE, TRUE, FALSE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, derivx = genthat::with_env(function(x, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                temp1 <- x/parmMat[, 4]
                temp2 <- 1 + (temp1)^parmMat[, 1]
                temp3 <- parmMat[, 5] * (temp2^(parmMat[, 5] - 1)) * (parmMat[, 1]/parmMat[, 4]) * temp1^(parmMat[, 1] - 
                  1)
                temp4 <- temp2^(2 * parmMat[, 5])
                (-(parmMat[, 3] - parmMat[, 2]) * temp3)/temp4
            }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log((100 - p)/100)
                EDp <- parmVec[4] * (exp(-tempVal/parmVec[5]) - 1)^(1/parmVec[1])
                EDder <- EDp * c(-log(exp(-tempVal/parmVec[5]) - 1)/(parmVec[1]^2), 0, 0, 1/parmVec[4], exp(-tempVal/parmVec[5]) * 
                  tempVal/(parmVec[5]^2) * (1/parmVec[1]) * ((exp(-tempVal/parmVec[5]) - 1)^(-1)))
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            inversion = genthat::with_env(function(y, parm) {
                parmVec[notFixed] <- parm
                exp(log(((parmVec[3] - parmVec[2])/(y - parmVec[2]))^(1/parmVec[5]) - 1)/parmVec[1] + log(parmVec[4]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), scaleFct = genthat::with_env(function(doseScaling, 
                respScaling) {
                c(1, respScaling, respScaling, doseScaling, 1)[notFixed]
            }, env = list2env(list(notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), name = "LL.4", text = "Log-logistic (ED50 as parameter)", 
            noParm = 4L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                signVal * parmVec[parmNo]
            }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(TRUE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), 
            retFct = genthat::with_env(function(doseScaling, respScaling) {
                fct <- function(dose, parm) {
                  parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
                  parmMat[, notFixed] <- parm
                  cParm <- parmMat[, 2]
                  cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
                }
                fct
            }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), fixed = c(NA, NA, NA, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 
            1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 1L)), structure(c(1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            .Dim = c(15L, 1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 0.1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 0.1, resp = structure(c(0.649297642, 0.652652542, 
            0.649703292, 0.648224628, 0.646023399, 0.645883477, 0.649254387, 0.643761281, 0.644775871, 0.622680536, 0.562994526, 
            0.496809531, 0.417300758, 0.343175157, 0.270650266), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
            "11", "12", "13", "14", "15")), doseScaling = 1, dose = structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0.36072, 0.9018, 
            2.7054, 5.4108, 14.4288, 36.072, 90.18), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", 
            "13", "14", "15"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(), parent = baseenv()))), df.residual = 11L, sumList = list(lenData = 15L, alternative = NULL, 
            df.residual = 11L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 
            1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 1L)), structure(c(1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(15L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            .Dim = c(15L, 1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), uniqueNames = "1", numAss = 1L, 
            cm = NULL, assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), parent = baseenv())), 
        pfFct = genthat::with_env(function(parmMat) {
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
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, 
            FALSE), doseScaling = 1), parent = baseenv())), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
            ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), type = "continuous", indexMat = structure(1:4, .Dim = c(4L, 
            1L), .Dimnames = list(NULL, "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, -0, -0, -0, -0, -0, 
            -0, 0.0530625774588789, 0.0835355928680098, 0.100920093053502, 0.0722746815793546, -0.0224565045500545, -0.0922499736859046, 
            -0.0977386382093782, 0, 0, 0, 0, 0, 0, 0, 0, 0.0371166529269411, 0.0833468085342806, 0.20281074444446, 0.32746891002968, 
            0.549570543994161, 0.742132769792418, 0.871605680737913, 1, 1, 1, 1, 1, 1, 1, 1, 0.962883347073059, 0.916653191465719, 
            0.79718925555554, 0.67253108997032, 0.450429456005839, 0.257867230207582, 0.128394319262087, 0, 0, 0, 0, 0, 0, 
            0, 0, 0.00122517853908206, 0.0026190930543006, 0.00554254585876143, 0.00754986766561679, 0.00848608016634531, 
            0.00656046561426618, 0.00383639008948268), .Dim = c(15L, 4L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", 
            "7", "8", "9", "10", "11", "12", "13", "14", "15"), NULL)), curveVarNam = "1", origData = structure(list(cell = 1:15, 
            dose1 = c(0, 0, 0, 0, 0, 0, 0, 0, 0.36072, 0.9018, 2.7054, 5.4108, 14.4288, 36.072, 90.18), pct1 = c(999L, 999L, 
                999L, 999L, 999L, 999L, 999L, 999L, 100L, 100L, 100L, 100L, 100L, 100L, 100L), rgr1 = c(0.649297642, 0.652652542, 
                0.649703292, 0.648224628, 0.646023399, 0.645883477, 0.649254387, 0.643761281, 0.644775871, 0.622680536, 0.562994526, 
                0.496809531, 0.417300758, 0.343175157, 0.270650266)), row.names = c(NA, 15L), class = "data.frame"), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0.36072, 
            0.9018, 2.7054, 5.4108, 14.4288, 36.072, 90.18), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
            "11", "12", "13", "14", "15")), origResp = c(0.649297642, 0.652652542, 0.649703292, 0.648224628, 0.646023399, 
            0.645883477, 0.649254387, 0.643761281, 0.644775871, 0.622680536, 0.562994526, 0.496809531, 0.417300758, 0.343175157, 
            0.270650266), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1), resp = c(0.649297642, 0.652652542, 0.649703292, 0.648224628, 0.646023399, 0.645883477, 0.649254387, 
            0.643761281, 0.644775871, 0.622680536, 0.562994526, 0.496809531, 0.417300758, 0.343175157, 0.270650266), names = list(dName = "dose1", 
            orName = "rgr1", wName = "weights", cNames = "1", rName = "")), coefficients = structure(c(0.936545161595021, 
            0.222588495904754, 0.649667273139542, 11.6675539016133), names = c("b:(Intercept)", "c:(Intercept)", "d:(Intercept)", 
            "e:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 2, 3, 4)), class = "drc")
    drc:::modelFit(object = etmotc.m1)
}




