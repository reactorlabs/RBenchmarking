

genthat_extracted_call <- function() {
    drm <- drc::drm
    LL.3 <- drc::LL.3
    ryegrass <- drc::ryegrass
    ryegrass.model1 <- structure(list(varParm = NULL, fit = list(par = c(2.47032679740345, 7.85542595151039, 3.2633581954173), 
        value = 6.62281981886554, counts = structure(c(44L, 12L), names = c("function", "gradient")), convergence = TRUE, 
        message = NULL, hessian = structure(c(6.37027064597338, 4.58028095149528, 1.34509687538281, 4.58028095149528, 22.3984953421764, 
            10.0701651020486, 1.34509687538281, 10.0701651020486, 20.9722915641412), .Dim = c(3L, 3L)), ovalue = 6.62281981886554), 
        curve = list(genthat::with_env(function(dose) {
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
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(2.47032679740345, 7.85542595151039, 
            3.2633581954173), .Dim = c(1L, 3L), .Dimnames = list("1", NULL)), numNames = 3L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
            ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 6.62281981886554, 21, 
            24), start = c(2.39932135682289, 8.363691111556, 3.45649646537463), parNames = list(c("b:(Intercept)", "d:(Intercept)", 
            "e:(Intercept)"), c("b", "d", "e"), c("(Intercept)", "(Intercept)", "(Intercept)")), predres = structure(c(7.85542595151039, 
            7.85542595151039, 7.85542595151039, 7.85542595151039, 7.85542595151039, 7.85542595151039, 7.50848959481662, 7.50848959481662, 
            7.50848959481662, 6.25402727193088, 6.25402727193088, 6.25402727193088, 3.2599259443199, 3.2599259443199, 3.2599259443199, 
            0.891436846348158, 0.891436846348158, 0.891436846348158, 0.177354488035355, 0.177354488035355, 0.177354488035355, 
            0.0326070002693113, 0.0326070002693113, 0.0326070002693113, -0.275425951510394, 0.144574048489606, 0.473145477489606, 
            -0.605425951510394, -0.480425951510394, 0.107074048489606, 0.847065961183381, -0.59420388081662, 0.24151040518338, 
            0.617401299069121, 0.195972728069121, -0.331805049930879, -1.3349259443199, -0.374211658319905, 0.973407388680095, 
            0.296063153651842, -0.0342939893481579, 0.165706010651842, 0.510145511964645, 0.347645511964645, 0.647645511964645, 
            0.217392999730689, 0.187392999730689, 0.407392999730689), .Dim = c(24L, 2L), .Dimnames = list(NULL, c("Predicted values", 
            "Residuals"))), call = drm(formula = rootl ~ conc, data = ryegrass, fct = LL.3()), data = structure(list(conc = c(0, 
            0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), 
            rootl = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 
                1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), 
            `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", 
            "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), parmMat = structure(c(2.47032679740345, 
            7.85542595151039, 3.2633581954173), .Dim = c(3L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), 
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
                fixed = c(NA, 0, NA, NA, 1), findcd = drc:::findcd), parent = baseenv())), names = c("b", "d", "e"), deriv1 = genthat::with_env(function(dose, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t5 <- (1 + t2)^parmMat[, 5]
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * 
                  parmMat[, 5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + 
                  t2), t5))[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, 
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
            }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log((100 - p)/100)
                EDp <- parmVec[4] * (exp(-tempVal/parmVec[5]) - 1)^(1/parmVec[1])
                EDder <- EDp * c(-log(exp(-tempVal/parmVec[5]) - 1)/(parmVec[1]^2), 0, 0, 1/parmVec[4], exp(-tempVal/parmVec[5]) * 
                  tempVal/(parmVec[5]^2) * (1/parmVec[1]) * ((exp(-tempVal/parmVec[5]) - 1)^(-1)))
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            inversion = genthat::with_env(function(y, parm) {
                parmVec[notFixed] <- parm
                exp(log(((parmVec[3] - parmVec[2])/(y - parmVec[2]))^(1/parmVec[5]) - 1)/parmVec[1] + log(parmVec[4]))
            }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), scaleFct = genthat::with_env(function(doseScaling, 
                respScaling) {
                c(1, respScaling, respScaling, doseScaling, 1)[notFixed]
            }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), name = "LL.3", text = "Log-logistic (ED50 as parameter) with lower limit at 0", 
            noParm = 3L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                signVal * parmVec[parmNo]
            }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(TRUE, FALSE, TRUE, TRUE, FALSE)), parent = baseenv())), 
            retFct = genthat::with_env(function(doseScaling, respScaling) {
                fct <- function(dose, parm) {
                  parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
                  parmMat[, notFixed] <- parm
                  cParm <- parmMat[, 2]
                  cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
                }
                fct
            }, env = list2env(list(parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), fixed = c(NA, 0, NA, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
            1, 1, 1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            .Dim = c(24L, 1L))), parmIndex = list(1, 2, 3), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), 
            parent = baseenv()))), parent = baseenv())), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, resp = structure(c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 
            8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 
            1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
            "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), doseScaling = 1, 
            dose = structure(c(0, 0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 
                15, 15, 30, 30, 30), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", 
                "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, 
            rvfct = genthat::with_env(function(object) {
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
            }, env = list2env(list(), parent = baseenv()))), df.residual = 21L, sumList = list(lenData = 24L, alternative = NULL, 
            df.residual = 21L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
            1, 1, 1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            .Dim = c(24L, 1L))), parmIndex = list(1, 2, 3), numNames = 3L), parent = baseenv())), uniqueNames = "1", numAss = 1L, 
            cm = NULL, assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), 
            parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), numNames = 3L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
            ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), type = "continuous", indexMat = structure(1:3, .Dim = c(3L, 
            1L), .Dimnames = list(NULL, "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, -0, -0, -0, -0, 0.412737269429317, 
            0.412737269429317, 0.412737269429317, 0.703109894679348, 0.703109894679348, 0.703109894679348, -0.265083447038821, 
            -0.265083447038821, -0.265083447038821, -0.657625397142655, -0.657625397142655, -0.657625397142655, -0.264410068721175, 
            -0.264410068721175, -0.264410068721175, -0.0720364315098546, -0.0720364315098546, -0.0720364315098546, 1, 1, 
            1, 1, 1, 1, 0.955834812926081, 0.955834812926081, 0.955834812926081, 0.796141076312786, 0.796141076312786, 0.796141076312786, 
            0.414990347365327, 0.414990347365327, 0.414990347365327, 0.11348039582459, 0.11348039582459, 0.11348039582459, 
            0.0225773228759485, 0.0225773228759485, 0.0225773228759485, 0.00415088888503135, 0.00415088888503135, 0.00415088888503135, 
            0, 0, 0, 0, 0, 0, 0.25102808979441, 0.25102808979441, 0.25102808979441, 0.965115212951515, 0.965115212951515, 
            0.965115212951515, 1.44364506308067, 1.44364506308067, 1.44364506308067, 0.598230551641407, 0.598230551641407, 
            0.598230551641407, 0.131224297814637, 0.131224297814637, 0.131224297814637, 0.0245806889305165, 0.0245806889305165, 
            0.0245806889305165), .Dim = c(24L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
            "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"), NULL)), curveVarNam = "1", 
        origData = structure(list(rootl = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 
            6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 
            0.22, 0.44), conc = c(0, 0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 
            15, 15, 15, 30, 30, 30)), row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
            "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"), class = "data.frame"), weights = c(1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0, 0, 
            0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24")), origResp = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 
            6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 
            0.22, 0.44), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), resp = c(7.58, 8, 8.328571429, 7.25, 7.375, 
            7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 
            0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), names = list(dName = "conc", orName = "rootl", 
            wName = "weights", cNames = "1", rName = "")), coefficients = structure(c(2.47032679740345, 7.85542595151039, 
            3.2633581954173), names = c("b:(Intercept)", "d:(Intercept)", "e:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 
            2, 3)), class = "drc")
    drc:::summary.drc(object = ryegrass.model1)
}




