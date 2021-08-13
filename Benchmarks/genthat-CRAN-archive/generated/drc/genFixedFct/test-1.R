

genthat_extracted_call <- function() {
    drm <- drc::drm
    methionine <- drc::methionine
    MM.3 <- drc::MM.3
    object <- structure(list(varParm = NULL, fit = list(par = c(1451.95618185924, 1736.14112096408, 1868.51673616717, 0.0389461639125828, 
        0.111041007890867), value = 496.652084397528, counts = structure(c(34L, 22L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(5.07741428566062, 1.50436601764241, 1.81860835428528, -3501.5968594827, 
            -3439.5616691896, 1.50436601764241, 4.19186293335743, -7.98031329759181e-15, -7475.56132461686, 0, 1.81860835428528, 
            -7.98031329759181e-15, 2.08477403712792, -2.96764485608024e-10, -3382.78802827323, -3501.5968594827, -7475.56132461686, 
            -2.96764485608024e-10, 16011521.7638331, 2.96764485608024e-05, -3439.5616691896, 0, -3382.78802827323, 2.96764485608024e-05, 
            5883450.90106452), .Dim = c(5L, 5L)), ovalue = 0.000496652084397528), curve = list(genthat::with_env(function(dose) {
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
    }, env = list2env(list(respScaling = 1, parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, TRUE, 
        FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(1451.95618185924, 1451.95618185924, 1736.14112096408, 
        1868.51673616717, 0.0389461639125828, 0.111041007890867), .Dim = 2:3, .Dimnames = list(c("DLM", "MHA"), NULL)), numNames = 3L, 
        numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, ciOrigLength = 3L, ciOrigIndex = c(2, 3)), parent = baseenv())), 
        NULL), summary = c(NA, NA, NA, 496.652084397528, 4, 9), start = c(1500.79233333333, 1698.245, 1722.161, 0.0456676179708694, 
        0.0983099813437163), parNames = list(c("c:(Intercept)", "d:DLM", "d:MHA", "e:DLM", "e:MHA"), c("c", "d", "d", "e", 
        "e"), c("(Intercept)", "DLM", "MHA", "DLM", "MHA")), predres = structure(c(1451.95618185924, 1595.94541453153, 1650.3075227861, 
        1677.56404805253, 1693.39898085035, 1562.27338911965, 1638.43778718458, 1691.32119064097, 1728.78992681315, 1.04381814075714, 
        -2.94541453153147, 9.69247721389752, -11.5640480525346, 4.60101914964844, -1.27338911964694, -5.43778718458384, 12.6788093590271, 
        -6.78992681314776), .Dim = c(9L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = gain ~ 
        dose, curveid = product, pmodels = list(~1, ~factor(product), ~factor(product)), data = methionine, fct = MM.3()), 
        data = structure(list(dose = c(0, 0.04, 0.09, 0.15, 0.22, 0.04, 0.09, 0.15, 0.22), gain = c(1453, 1593, 1660, 1666, 
            1698, 1561, 1633, 1704, 1722), product = c(1, 1, 1, 1, 1, 2, 2, 2, 2), product = structure(c(1L, 2L, 2L, 2L, 
            2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", "MHA"), class = "factor"), weights = c(1, 1, 1, 1, 1, 1, 1, 
            1, 1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), parmMat = structure(c(1451.95618185924, 
            1736.14112096408, 0.0389461639125828, 1451.95618185924, 1868.51673616717, 0.111041007890867), .Dim = 3:2, .Dimnames = list(NULL, 
            c("DLM", "MHA"))), fct = structure(list(fct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), 
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
                fixed = c(-1, NA, NA, NA, 1), findcd = drc:::findcd), parent = baseenv())), names = c("c", "d", "e"), deriv1 = genthat::with_env(function(dose, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t5 <- (1 + t2)^parmMat[, 5]
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * 
                  parmMat[, 5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + 
                  t2), t5))[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, 
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
            }, env = list2env(list(parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log((100 - p)/100)
                EDp <- parmVec[4] * (exp(-tempVal/parmVec[5]) - 1)^(1/parmVec[1])
                EDder <- EDp * c(-log(exp(-tempVal/parmVec[5]) - 1)/(parmVec[1]^2), 0, 0, 1/parmVec[4], exp(-tempVal/parmVec[5]) * 
                  tempVal/(parmVec[5]^2) * (1/parmVec[1]) * ((exp(-tempVal/parmVec[5]) - 1)^(-1)))
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            inversion = genthat::with_env(function(y, parm) {
                parmVec[notFixed] <- parm
                exp(log(((parmVec[3] - parmVec[2])/(y - parmVec[2]))^(1/parmVec[5]) - 1)/parmVec[1] + log(parmVec[4]))
            }, env = list2env(list(notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), scaleFct = genthat::with_env(function(doseScaling, 
                respScaling) {
                c(1, respScaling, respScaling, doseScaling, 1)[notFixed]
            }, env = list2env(list(notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), name = "MM.3", text = "Shifted Michaelis-Menten", 
            noParm = 3L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                signVal * parmVec[parmNo]
            }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(FALSE, TRUE, TRUE, TRUE, FALSE)), parent = baseenv())), 
            retFct = genthat::with_env(function(doseScaling, respScaling) {
                fct <- function(dose, parm) {
                  parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
                  parmMat[, notFixed] <- parm
                  cParm <- parmMat[, 2]
                  cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
                }
                fct
            }, env = list2env(list(parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, TRUE, FALSE)), 
                parent = baseenv())), fixed = c(-1, NA, NA, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(9L, 1L)), structure(c(1, 
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", "3", "4", 
            "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
            parmIndex = list(1, c(2, 3), c(4, 5)), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 1000, parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, 
            TRUE, FALSE), doseScaling = 0.01), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), weights = c(1, 1, 1, 1, 1, 1, 1, 
            1, 1), rmNA = FALSE, respScaling = 1000, resp = structure(c(1453, 1593, 1660, 1666, 1698, 1561, 1633, 1704, 1722), 
            names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), doseScaling = 0.01, dose = structure(c(0, 0.04, 0.09, 
            0.15, 0.22, 0.04, 0.09, 0.15, 0.22), names = c("1", "2", "3", "4", "5", "7", "8", "9", "10"))), parent = baseenv())), 
            opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
            }, env = list2env(list(), parent = baseenv()))), df.residual = 4L, sumList = list(lenData = 9L, alternative = NULL, 
            df.residual = 4L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(9L, 1L)), structure(c(1, 
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", "3", "4", 
            "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
            parmIndex = list(1, c(2, 3), c(4, 5)), numNames = 3L), parent = baseenv())), uniqueNames = c("control", "DLM", 
            "MHA"), numAss = 2L, cm = NULL, assayNoOld = structure(c(1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", 
            "DLM", "MHA"), class = "factor", names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), assayNames = c("DLM", 
            "MHA")), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
        }, env = list2env(list(respScaling = 1, parmVec = c(-1, 0, 0, 0, 1), numParm = 5, notFixed = c(FALSE, TRUE, TRUE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), numNames = 3L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, 
            ciOrigLength = 3L, ciOrigIndex = c(2, 3)), parent = baseenv())), type = "continuous", indexMat = structure(c(1L, 
            2L, 4L, 1L, 3L, 5L), .Dim = 3:2, .Dimnames = list(NULL, c("DLM", "MHA"))), logDose = NULL, cm = NULL, deriv1 = structure(c(1, 
            0.493325602947699, 0.302034296568806, 0.20612307286959, 0.150402552114001, 0.735171258729274, 0.552330139287524, 
            0.425377640042248, 0.3354297662345, 0, 0.506674397052301, 0.697965703431194, 0.79387692713041, 0.849597447885999, 
            0.264828741270726, 0.447669860712476, 0.574622359957752, 0.6645702337655, -0, -1823.89144115638, -1538.24925773929, 
            -1194.03253033319, -932.405390151356, -730.379178481864, -927.579936460381, -916.963241583105, -836.252120900888), 
            .Dim = c(9L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "7", "8", "9", "10"), NULL)), curveVarNam = "product", 
        origData = structure(list(product = structure(c(1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", 
            "MHA"), class = "factor"), dose = c(0, 0.04, 0.09, 0.15, 0.22, 0.04, 0.09, 0.15, 0.22), gain = c(1453L, 1593L, 
            1660L, 1666L, 1698L, 1561L, 1633L, 1704L, 1722L)), class = "data.frame", row.names = c(1L, 2L, 3L, 4L, 5L, 7L, 
            8L, 9L, 10L)), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0.04, 0.09, 0.15, 
            0.22, 0.04, 0.09, 0.15, 0.22), names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), origResp = c(1453, 1593, 
            1660, 1666, 1698, 1561, 1633, 1704, 1722), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = structure(c(1L, 
            2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", "MHA"), class = "factor", names = c("1", "2", "3", 
            "4", "5", "7", "8", "9", "10")), resp = c(1453, 1593, 1660, 1666, 1698, 1561, 1633, 1704, 1722), names = list(dName = "dose", 
            orName = "gain", wName = "weights", cNames = "product", rName = "")), coefficients = structure(c(1451.95618185924, 
            1736.14112096408, 1868.51673616717, 0.0389461639125828, 0.111041007890867), names = c("c:(Intercept)", "d:DLM", 
            "d:MHA", "e:DLM", "e:MHA")), boxcox = NULL, indexMat2 = structure(c(1, 1, 2, 3, 4, 5), .Dim = 2:3)), class = "drc")
    drc:::genFixedFct(fixed = object$fct$fixed)
}




