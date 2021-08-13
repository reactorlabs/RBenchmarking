

genthat_extracted_call <- function() {
    BC.4 <- drc::BC.4
    drm <- drc::drm
    lettuce <- drc::lettuce
    object <- structure(list(varParm = NULL, fit = list(par = c(1.2828119295108, 0.967302096484285, 0.847632505994697, 1.62070269025673), 
        value = 0.124975000780841, counts = structure(c(134L, 68L), names = c("function", "gradient")), convergence = TRUE, 
        message = NULL, hessian = structure(c(39.4731168012784, -0.410817892725881, -20.860445001756, -8.34643450559415, 
            -0.410817892725881, 7.31795502219258, 3.86242128026611, 1.95513464088709, -20.860445001756, 3.86242128026611, 
            17.8132692052628, 7.52584187276388, -8.34643450559415, 1.95513464088709, 7.52584187276388, 3.22723283131474), 
            .Dim = c(4L, 4L)), ovalue = 0.124975000780841), curve = list(genthat::with_env(function(dose) {
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
        parmMat[, 2] + (parmMat[, 3] + parmMat[, 5] * dose - parmMat[, 2])/(1 + exp(parmMat[, 1] * (log(dose) - log(parmMat[, 
            4]))))
    }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
        parmMat = structure(c(1.2828119295108, 0.967302096484285, 0.847632505994697, 1.62070269025673), .Dim = c(1L, 4L), 
            .Dimnames = list("1", NULL)), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
        ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 0.124975000780841, 10, 
        14), start = c(1.23217366804728, 1.336992, 4.47218724194804, 0), parNames = list(c("b:(Intercept)", "d:(Intercept)", 
        "e:(Intercept)", "f:(Intercept)"), c("b", "d", "e", "f"), c("(Intercept)", "(Intercept)", "(Intercept)", "(Intercept)")), 
        predres = structure(c(0.967302096484285, 0.967302096484285, 1.15491323965282, 1.15491323965282, 1.15731168794603, 
            1.15731168794603, 0.947168941308349, 0.947168941308349, 0.695071631802812, 0.695071631802812, 0.496430106746324, 
            0.496430106746324, 0.35777798137309, 0.35777798137309, 0.158697903515715, -0.134302096484285, -0.0589132396528163, 
            -0.0489132396528162, 0.00568831205396725, 0.178688312053967, 0.0378310586916508, -0.193168941308349, 0.0209283681971878, 
            -0.0120716318028121, 0.0635698932536762, -0.00843010674632383, 0.0172220186269098, -0.0137779813730902), .Dim = c(14L, 
            2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = weight ~ conc, data = lettuce, 
            fct = BC.4()), data = structure(list(conc = c(0, 0, 0.32, 0.32, 1, 1, 3.2, 3.2, 10, 10, 32, 32, 100, 100), weight = c(1.126, 
            0.833, 1.096, 1.106, 1.163, 1.336, 0.985, 0.754, 0.716, 0.683, 0.56, 0.488, 0.375, 0.344), `1` = c(1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
            "10", "11", "12", "13", "14")), parmMat = structure(c(1.2828119295108, 0.967302096484285, 0.847632505994697, 
            1.62070269025673), .Dim = c(4L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] + parmMat[, 5] * dose - parmMat[, 2])/(1 + exp(parmMat[, 1] * (log(dose) - log(parmMat[, 
                4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            ssfct = genthat::with_env(function(dframe) {
                initval <- llogistic()$ssfct(dframe)
                initval[5] <- 0
                return(initval[notFixed])
            }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), llogistic = drc::llogistic), parent = baseenv())), 
            names = c("b", "d", "e", "f"), deriv1 = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * dose
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t3 <- 1 + t2
                t4 <- (1 + t2)^(-2)
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1]) * t4, 1 - 1/t3, 1/t3, t1 * t2 * (parmMat[, 1]/parmMat[, 
                  4]) * t4, dose/t3)[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, 
                TRUE, TRUE, TRUE)), parent = baseenv())), deriv2 = NULL, edfct = genthat::with_env(function(parm, p, lower = 0.001, 
                upper = 1000, ...) {
                interval <- c(lower, upper)
                parmVec[notFixed] <- parm
                tempVal <- (100 - p)/100
                helpEqn <- function(dose) {
                  expVal <- exp(parmVec[1] * (log(dose) - log(parmVec[4])))
                  parmVec[5] * (1 + expVal * (1 - parmVec[1])) - (parmVec[3] - parmVec[2]) * expVal * parmVec[1]/dose
                }
                maxAt <- uniroot(helpEqn, interval)$root
                eqn <- function(dose) {
                  tempVal * (1 + exp(parmVec[1] * (log(dose) - log(parmVec[4])))) - (1 + parmVec[5] * dose/(parmVec[3] - 
                    parmVec[2]))
                }
                EDp <- uniroot(eqn, lower = maxAt, upper = upper)$root
                EDdose <- EDp
                tempVal1 <- exp(parmVec[1] * (log(EDdose) - log(parmVec[4])))
                tempVal2 <- parmVec[3] - parmVec[2]
                derParm <- c(tempVal * tempVal1 * (log(EDdose) - log(parmVec[4])), -parmVec[5] * EDdose/((tempVal2)^2), parmVec[5] * 
                  EDdose/((tempVal2)^2), -tempVal * tempVal1 * parmVec[1]/parmVec[4], -EDdose/tempVal2)
                derDose <- tempVal * tempVal1 * parmVec[1]/EDdose - parmVec[5]/tempVal2
                EDder <- derParm/derDose
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(uniroot = stats::uniroot, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            maxfct = genthat::with_env(function(parm, lower = 0.001, upper = 1000) {
                parmVec[notFixed] <- parm
                if (parmVec[1] < 1) {
                  stop("Brain-Cousens model with b<1 not meaningful")
                }
                if (parmVec[5] < 0) {
                  stop("Brain-Cousens model with f<0 not meaningful")
                }
                optfct <- function(t) {
                  expTerm1 <- parmVec[5] * t
                  expTerm2 <- exp(parmVec[1] * (log(t) - log(parmVec[4])))
                  return(parmVec[5] * (1 + expTerm2) - (parmVec[3] - parmVec[2] + expTerm1) * expTerm2 * parmVec[1]/t)
                }
                ED1 <- edfct(parm, 1, lower, upper)[[1]]
                doseVec <- exp(seq(log(1e-06), log(ED1), length = 100))
                maxDose <- uniroot(optfct, c((doseVec[optfct(doseVec) > 0])[1], ED1))$root
                return(c(maxDose, fct(maxDose, matrix(parm, 1, length(names)))))
            }, env = list2env(list(fct = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                parmMat[, 2] + (parmMat[, 3] + parmMat[, 5] * dose - parmMat[, 2])/(1 + exp(parmMat[, 1] * (log(dose) - log(parmMat[, 
                  4]))))
            }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5), parent = emptyenv())), edfct = genthat::with_env(function(parm, 
                p, lower = 0.001, upper = 1000, ...) {
                interval <- c(lower, upper)
                parmVec[notFixed] <- parm
                tempVal <- (100 - p)/100
                helpEqn <- function(dose) {
                  expVal <- exp(parmVec[1] * (log(dose) - log(parmVec[4])))
                  parmVec[5] * (1 + expVal * (1 - parmVec[1])) - (parmVec[3] - parmVec[2]) * expVal * parmVec[1]/dose
                }
                maxAt <- uniroot(helpEqn, interval)$root
                eqn <- function(dose) {
                  tempVal * (1 + exp(parmVec[1] * (log(dose) - log(parmVec[4])))) - (1 + parmVec[5] * dose/(parmVec[3] - 
                    parmVec[2]))
                }
                EDp <- uniroot(eqn, lower = maxAt, upper = upper)$root
                EDdose <- EDp
                tempVal1 <- exp(parmVec[1] * (log(EDdose) - log(parmVec[4])))
                tempVal2 <- parmVec[3] - parmVec[2]
                derParm <- c(tempVal * tempVal1 * (log(EDdose) - log(parmVec[4])), -parmVec[5] * EDdose/((tempVal2)^2), parmVec[5] * 
                  EDdose/((tempVal2)^2), -tempVal * tempVal1 * parmVec[1]/parmVec[4], -EDdose/tempVal2)
                derDose <- tempVal * tempVal1 * parmVec[1]/EDdose - parmVec[5]/tempVal2
                EDder <- derParm/derDose
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(), parent = emptyenv())), uniroot = stats::uniroot, notFixed = c(TRUE, FALSE, TRUE, TRUE, 
                TRUE), names = c("b", "d", "e", "f")), parent = baseenv())), name = "BC.4", text = "Brain-Cousens (hormesis) with lower limit fixed at 0", 
            noParm = 4L), class = "braincousens"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 
                1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] + parmMat[, 5] * dose - parmMat[, 2])/(1 + exp(parmMat[, 1] * (log(dose) - log(parmMat[, 
                4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), 
            parent = baseenv()))), parent = baseenv())), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, 
            respScaling = 1, resp = structure(c(1.126, 0.833, 1.096, 1.106, 1.163, 1.336, 0.985, 0.754, 0.716, 0.683, 0.56, 
                0.488, 0.375, 0.344), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14")), 
            doseScaling = 1, dose = structure(c(0, 0, 0.32, 0.32, 1, 1, 3.2, 3.2, 10, 10, 32, 32, 100, 100), names = c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"))), parent = baseenv())), opdfct1 = NULL, 
            ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
            }, env = list2env(list(), parent = baseenv()))), df.residual = 10L, sumList = list(lenData = 14L, alternative = NULL, 
            df.residual = 10L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1), .Dim = c(14L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(14L, 
                1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), uniqueNames = "1", numAss = 1L, 
            cm = NULL, assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), parent = baseenv())), 
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
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] + parmMat[, 5] * dose - parmMat[, 2])/(1 + exp(parmMat[, 1] * (log(dose) - log(parmMat[, 
                4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), 
            parent = baseenv())), type = "continuous", indexMat = structure(1:4, .Dim = c(4L, 1L), .Dimnames = list(NULL, 
            "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, 0.250618488214006, 0.250618488214006, -0.105761082550499, 
            -0.105761082550499, -1.06459838244955, -1.06459838244955, -1.6459391776944, -1.6459391776944, -1.78562130043844, 
            -1.78562130043844, -1.70302666437015, -1.70302666437015, 1, 1, 0.777234193058662, 0.777234193058662, 0.447182978128644, 
            0.447182978128644, 0.153922342833978, 0.153922342833978, 0.0404715451672782, 0.0404715451672782, 0.00939678396988345, 
            0.00939678396988345, 0.00219445112504174, 0.00219445112504174, 0, 0, 0.389361742798659, 0.389361742798659, 0.968249169143943, 
            0.968249169143943, 1.21281081764886, 1.21281081764886, 1.00935237428619, 1.00935237428619, 0.744240384766903, 
            0.744240384766903, 0.540275048452163, 0.540275048452163, 0, 0, 0.248714941778772, 0.248714941778772, 0.447182978128644, 
            0.447182978128644, 0.492551497068729, 0.492551497068729, 0.404715451672782, 0.404715451672782, 0.30069708703627, 
            0.30069708703627, 0.219445112504174, 0.219445112504174), .Dim = c(14L, 4L), .Dimnames = list(c("1", "2", "3", 
            "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"), NULL)), curveVarNam = "1", origData = structure(list(conc = c(0, 
            0, 0.32, 0.32, 1, 1, 3.2, 3.2, 10, 10, 32, 32, 100, 100), weight = c(1.126, 0.833, 1.096, 1.106, 1.163, 1.336, 
            0.985, 0.754, 0.716, 0.683, 0.56, 0.488, 0.375, 0.344)), row.names = c(NA, 14L), class = "data.frame"), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0.32, 0.32, 1, 1, 3.2, 3.2, 
            10, 10, 32, 32, 100, 100), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14")), 
            origResp = c(1.126, 0.833, 1.096, 1.106, 1.163, 1.336, 0.985, 0.754, 0.716, 0.683, 0.56, 0.488, 0.375, 0.344), 
            weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            resp = c(1.126, 0.833, 1.096, 1.106, 1.163, 1.336, 0.985, 0.754, 0.716, 0.683, 0.56, 0.488, 0.375, 0.344), names = list(dName = "conc", 
                orName = "weight", wName = "weights", cNames = "1", rName = "")), coefficients = structure(c(1.2828119295108, 
            0.967302096484285, 0.847632505994697, 1.62070269025673), names = c("b:(Intercept)", "d:(Intercept)", "e:(Intercept)", 
            "f:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 2, 3, 4)), class = "drc")
    drc:::vcCont(object = object)
}




