library(drc)

function_to_run <- function() {
    W1.3 <- drc::W1.3
    drm <- drc::drm
    ryegrass <- drc::ryegrass
    W1.4 <- drc::W1.4
    ryegrass.m2 <- structure(list(varParm = NULL, fit = list(par = c(1.73136829363987, 7.91619543739368, 4.19057116985809), 
        value = 8.9520499471733, counts = structure(c(46L, 12L), names = c("function", "gradient")), convergence = TRUE, 
        message = NULL, hessian = structure(c(18.1427980360355, 10.8805825235482, 8.36904107395337, 10.8805825235482, 21.9815888910356, 
            7.57620311108695, 8.36904107395337, 7.57620311108695, 12.0222780874769), .Dim = c(3L, 3L)), ovalue = 8.9520499471733), 
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
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            parmMat = structure(c(1.73136829363987, 7.91619543739368, 4.19057116985809), .Dim = c(1L, 3L), .Dimnames = list("1", 
                NULL)), numNames = 3L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, 
            ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 8.9520499471733, 21, 24), start = c(1.423813732209, 
            8.363691111556, 6.26945264344535), parNames = list(c("b:(Intercept)", "d:(Intercept)", "e:(Intercept)"), c("b", 
            "d", "e"), c("(Intercept)", "(Intercept)", "(Intercept)")), predres = structure(c(7.91619543739368, 7.91619543739368, 
            7.91619543739368, 7.91619543739368, 7.91619543739368, 7.91619543739368, 7.34289220568234, 7.34289220568234, 7.34289220568234, 
            6.16746572735272, 6.16746572735272, 6.16746572735272, 3.46901240063607, 3.46901240063607, 3.46901240063607, 0.511413908780295, 
            0.511413908780295, 0.511413908780295, 0.000887278245013271, 0.000887278245013271, 0.000887278245013271, 6.04390926203833e-13, 
            6.04390926203833e-13, 6.04390926203833e-13, -0.336195437393679, 0.0838045626063213, 0.412375991606321, -0.666195437393679, 
            -0.541195437393679, 0.0463045626063217, 1.01266335031766, -0.428606491682337, 0.407107794317663, 0.703962843647276, 
            0.282534272647276, -0.245243505352724, -1.54401240063607, -0.583298114636073, 0.764320932363928, 0.676086091219705, 
            0.345728948219705, 0.545728948219706, 0.686612721754987, 0.524112721754987, 0.824112721754987, 0.249999999999396, 
            0.219999999999396, 0.439999999999396), .Dim = c(24L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), 
        call = drm(formula = rootl ~ conc, data = ryegrass, fct = W1.3()), data = structure(list(conc = c(0, 0, 0, 0, 0, 
            0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), rootl = c(7.58, 
            8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 
            4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), `1` = c(1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
            "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), parmMat = structure(c(1.73136829363987, 7.91619543739368, 
            4.19057116985809), .Dim = c(3L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), 
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
                useFixed = FALSE, fixed = c(NA, 0, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("b", 
                "d", "e"), deriv1 = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t3 <- exp(-t2)
                derMat <- as.matrix(cbind(-t1 * divAtInf(xlogx(dose/parmMat[, 4], parmMat[, 1]), exp(t2)), 1 - t3, t3, t1 * 
                  divAtInf(t2, exp(t2)) * parmMat[, 1]/parmMat[, 4]))
                return(derMat[, notFixed])
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, FALSE, TRUE, 
                TRUE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, edfct = genthat::with_env(function(parm, 
                respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log(-log((100 - p)/100))
                EDp <- exp(tempVal/parmVec[1] + log(parmVec[4]))
                EDder <- EDp * c(-tempVal/(parmVec[1]^2), 0, 0, 1/parmVec[4])
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            name = "W1.3", text = "Weibull (type 1) with lower limit at 0", noParm = 3L, fixed = c(NA, 0, NA, NA)), class = "Weibull-1"), 
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
            1, 1, 1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
            .Dim = c(24L, 1L))), parmIndex = list(1, 2, 3), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
                TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
            weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, 
            resp = structure(c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 
                5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 
                0.22, 0.44), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
                "17", "18", "19", "20", "21", "22", "23", "24")), doseScaling = 1, dose = structure(c(0, 0, 0, 0, 0, 0, 0.94, 
                0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), names = c("1", "2", 
                "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
                "22", "23", "24"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), 
            numNames = 3L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), 
            parent = baseenv())), type = "continuous", indexMat = structure(1:3, .Dim = c(3L, 1L), .Dimnames = list(NULL, 
            "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, -0, -0, -0, -0, 0.825116167201289, 0.825116167201289, 
            0.825116167201289, 1.23404136446547, 1.23404136446547, 1.23404136446547, 0.317922917402754, 0.317922917402754, 
            0.317922917402754, -0.815481199145478, -0.815481199145478, -0.815481199145478, -0.0102921382371019, -0.0102921382371019, 
            -0.0102921382371019, -3.59318289211872e-11, -3.59318289211872e-11, -3.59318289211872e-11, 1, 1, 1, 1, 1, 1, 0.927578438879461, 
            0.927578438879461, 0.927578438879461, 0.779094676998436, 0.779094676998436, 0.779094676998436, 0.438217124383959, 
            0.438217124383959, 0.438217124383959, 0.064603497074432, 0.064603497074432, 0.064603497074432, 0.000112083923651258, 
            0.000112083923651258, 0.000112083923651258, 7.63486615488137e-14, 7.63486615488137e-14, 7.63486615488137e-14, 
            0, 0, 0, 0, 0, 0, 0.228072900260015, 0.228072900260015, 0.228072900260015, 0.636073155452674, 0.636073155452674, 
            0.636073155452674, 1.1824900730634, 1.1824900730634, 1.1824900730634, 0.578839255680505, 0.578839255680505, 0.578839255680505, 
            0.00333456405493087, 0.00333456405493087, 0.00333456405493087, 7.54207690695989e-12, 7.54207690695989e-12, 7.54207690695989e-12), 
            .Dim = c(24L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", 
                "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"), c("", "t3", ""))), curveVarNam = "1", origData = structure(list(rootl = c(7.58, 
            8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 
            4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), conc = c(0, 0, 0, 0, 
            0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30)), row.names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24"), class = "data.frame"), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 
            3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
            "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), origResp = c(7.58, 8, 8.328571429, 
            7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 
            1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1), resp = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 
            6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 
            0.825, 0.25, 0.22, 0.44), names = list(dName = "conc", orName = "rootl", wName = "weights", cNames = "1", rName = "")), 
        coefficients = structure(c(1.73136829363987, 7.91619543739368, 4.19057116985809), names = c("b:(Intercept)", "d:(Intercept)", 
            "e:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 2, 3)), class = "drc")
    ryegrass.m1 <- structure(list(varParm = NULL, fit = list(par = c(2.39340686770421, 0.660451721014847, 7.80585837524344, 
        3.60013015906519), value = 6.02415085862733, counts = structure(c(44L, 15L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(4.38741459905146, 0.0125174857975636, 5.77710291472921, 
            3.87240318886638, 0.0125174857975636, 20.8673735923491, 2.5008489740023, 8.442674841218, 5.77710291472921, 2.5008489740023, 
            22.1309284604872, 8.46864187222016, 3.87240318886638, 8.442674841218, 8.46864187222016, 21.8207837579456), .Dim = c(4L, 
            4L)), ovalue = 6.02415085862733), curve = list(genthat::with_env(function(dose) {
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
    }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), 
        parmMat = structure(c(2.39340686770421, 0.660451721014847, 7.80585837524344, 3.60013015906519), .Dim = c(1L, 4L), 
            .Dimnames = list("1", NULL)), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
        ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 6.02415085862733, 20, 24), 
        start = c(1.423813732209, 0.211864444444, 8.363691111556, 6.26945264344535), parNames = list(c("b:(Intercept)", "c:(Intercept)", 
            "d:(Intercept)", "e:(Intercept)"), c("b", "c", "d", "e"), c("(Intercept)", "(Intercept)", "(Intercept)", "(Intercept)")), 
        predres = structure(c(7.80585837524344, 7.80585837524344, 7.80585837524344, 7.80585837524344, 7.80585837524344, 7.80585837524344, 
            7.52433410397809, 7.52433410397809, 7.52433410397809, 6.44551148899574, 6.44551148899574, 6.44551148899574, 3.0329159464917, 
            3.0329159464917, 3.0329159464917, 0.682243099681695, 0.682243099681695, 0.682243099681695, 0.66045172101528, 
            0.66045172101528, 0.66045172101528, 0.660451721014847, 0.660451721014847, 0.660451721014847, -0.225858375243441, 
            0.194141624756559, 0.522713053756559, -0.555858375243441, -0.430858375243441, 0.156641624756559, 0.83122145202191, 
            -0.610048389978091, 0.225665896021909, 0.425917082004258, 0.00448851100425784, -0.523289266995742, -1.1079159464917, 
            -0.147201660491699, 1.2004173865083, 0.505256900318305, 0.174899757318305, 0.374899757318305, 0.0270482789847204, 
            -0.13545172101528, 0.16454827898472, -0.410451721014847, -0.440451721014847, -0.220451721014847), .Dim = c(24L, 
            2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = rootl ~ conc, data = ryegrass, 
            fct = W1.4()), data = structure(list(conc = c(0, 0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 
            3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), rootl = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 
            6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 
            0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24")), parmMat = structure(c(2.39340686770421, 0.660451721014847, 7.80585837524344, 3.60013015906519), 
            .Dim = c(4L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), 
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
                useFixed = FALSE, fixed = c(NA, NA, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("b", 
                "c", "d", "e"), deriv1 = genthat::with_env(function(dose, parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t3 <- exp(-t2)
                derMat <- as.matrix(cbind(-t1 * divAtInf(xlogx(dose/parmMat[, 4], parmMat[, 1]), exp(t2)), 1 - t3, t3, t1 * 
                  divAtInf(t2, exp(t2)) * parmMat[, 1]/parmMat[, 4]))
                return(derMat[, notFixed])
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, TRUE, TRUE, 
                TRUE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, edfct = genthat::with_env(function(parm, 
                respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log(-log((100 - p)/100))
                EDp <- exp(tempVal/parmVec[1] + log(parmVec[4]))
                EDder <- EDp * c(-tempVal/(parmVec[1]^2), 0, 0, 1/parmVec[4])
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, TRUE, TRUE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            name = "W1.4", text = "Weibull (type 1)", noParm = 4L, fixed = c(NA, NA, NA, NA)), class = "Weibull-1"), robust = NULL, 
        estMethod = list(llfct = genthat::with_env(function(object) {
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
            .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(24L, 
            1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
                TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
            weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, 
            resp = structure(c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 
                5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 
                0.22, 0.44), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
                "17", "18", "19", "20", "21", "22", "23", "24")), doseScaling = 1, dose = structure(c(0, 0, 0, 0, 0, 0, 0.94, 
                0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), names = c("1", "2", 
                "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
                "22", "23", "24"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(), parent = baseenv()))), df.residual = 20L, sumList = list(lenData = 24L, alternative = NULL, 
            df.residual = 20L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
            .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(24L, 
            1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), uniqueNames = "1", numAss = 1L, cm = NULL, 
            assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), parent = baseenv())), 
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
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, TRUE, TRUE, TRUE)), parent = baseenv())), 
            numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), 
            parent = baseenv())), type = "continuous", indexMat = structure(1:4, .Dim = c(4L, 1L), .Dimnames = list(NULL, 
            "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, -0, -0, -0, -0, 0.370496460819382, 0.370496460819382, 
            0.370496460819382, 0.793770586661955, 0.793770586661955, 0.793770586661955, -0.106685071887176, -0.106685071887176, 
            -0.106685071887176, -0.0926452091048716, -0.0926452091048716, -0.0926452091048716, -1.88026985318044e-11, -1.88026985318044e-11, 
            -1.88026985318044e-11, -8.69595395330238e-67, -8.69595395330238e-67, -8.69595395330238e-67, 0, 0, 0, 0, 0, 0, 
            0.0393993351097445, 0.0393993351097445, 0.0393993351097445, 0.190380611220029, 0.190380611220029, 0.190380611220029, 
            0.667973519173629, 0.667973519173629, 0.667973519173629, 0.996950295522516, 0.996950295522516, 0.996950295522516, 
            0.999999999999939, 0.999999999999939, 0.999999999999939, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.960600664890256, 0.960600664890256, 
            0.960600664890256, 0.809619388779971, 0.809619388779971, 0.809619388779971, 0.332026480826371, 0.332026480826371, 
            0.332026480826371, 0.00304970447748447, 0.00304970447748447, 0.00304970447748447, 6.05864856963131e-14, 6.05864856963131e-14, 
            6.05864856963131e-14, 3.58964493909344e-70, 3.58964493909344e-70, 3.58964493909344e-70, 0, 0, 0, 0, 0, 0, 0.18342409164152, 
            0.18342409164152, 0.18342409164152, 0.812234913051597, 0.812234913051597, 0.812234913051597, 1.73897194135475, 
            1.73897194135475, 1.73897194135475, 0.0839198828077224, 0.0839198828077224, 0.0839198828077224, 8.75931475442097e-12, 
            8.75931475442097e-12, 8.75931475442097e-12, 2.72667340917316e-67, 2.72667340917316e-67, 2.72667340917316e-67), 
            .Dim = c(24L, 4L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", 
                "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"), c("", "", "t3", ""))), curveVarNam = "1", origData = structure(list(rootl = c(7.58, 
            8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 
            4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), conc = c(0, 0, 0, 0, 
            0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30)), row.names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24"), class = "data.frame"), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0, 0, 0, 0, 0.94, 0.94, 0.94, 1.88, 1.88, 1.88, 3.75, 
            3.75, 3.75, 7.5, 7.5, 7.5, 15, 15, 15, 30, 30, 30), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
            "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), origResp = c(7.58, 8, 8.328571429, 
            7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 
            1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 0.825, 0.25, 0.22, 0.44), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1), resp = c(7.58, 8, 8.328571429, 7.25, 7.375, 7.9625, 8.355555556, 6.914285714, 7.75, 
            6.871428571, 6.45, 5.922222222, 1.925, 2.885714286, 4.233333333, 1.1875, 0.857142857, 1.057142857, 0.6875, 0.525, 
            0.825, 0.25, 0.22, 0.44), names = list(dName = "conc", orName = "rootl", wName = "weights", cNames = "1", rName = "")), 
        coefficients = structure(c(2.39340686770421, 0.660451721014847, 7.80585837524344, 3.60013015906519), names = c("b:(Intercept)", 
            "c:(Intercept)", "d:(Intercept)", "e:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 2, 3, 4)), class = "drc")
    drc:::anova.drc(object = ryegrass.m2, ryegrass.m1)
}




