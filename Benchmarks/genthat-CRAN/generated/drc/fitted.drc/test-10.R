library(drc)

function_to_run <- function() {
    CRS.4c <- drc::CRS.4c
    drm <- drc::drm
    leaflength <- drc::leaflength
    leaflength.crs4c1 <- structure(list(varParm = NULL, fit = list(par = c(0.479989997559277, 10.7892883391414, 0.0140085424006819, 
        414.101014494687), value = 622.205986108083, counts = structure(c(348L, 79L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(134552.778348195, -239.447392000357, -998337.611674746, 
            -76.0608145991079, -239.447392000357, 16.625266383384, 4173.96167568042, 0.378424425527587, -998337.611674746, 
            4173.96167568042, 10124092.552271, 787.569375261679, -76.0608145991079, 0.378424425527587, 787.569375261679, 
            0.0622947951812019), .Dim = c(4L, 4L)), ovalue = 622.205986108083), curve = list(genthat::with_env(function(dose) {
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
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * exp(-1/(dose^alpha)))/(1 + exp(parmMat[, 1] * (log(dose) - 
            log(parmMat[, 4]))))
    }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), alpha = 0.25), 
        parent = baseenv())), parmMat = structure(c(0.479989997559277, 10.7892883391414, 0.0140085424006819, 414.101014494687), 
        .Dim = c(1L, 4L), .Dimnames = list("1", NULL)), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
        ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 622.205986108083, 38, 42), 
        start = c(0.452297280441456, 29.0289, 0.966443848761939, -16.7242255673661), parNames = list(c("b:(Intercept)", "d:(Intercept)", 
            "e:(Intercept)", "f:(Intercept)"), c("b", "d", "e", "f"), c("(Intercept)", "(Intercept)", "(Intercept)", "(Intercept)")), 
        predres = structure(c(10.7892883391414, 10.7892883391414, 10.7892883391414, 10.7892883391414, 10.7892883391414, 10.7892883391414, 
            15.3018681717334, 15.3018681717334, 15.3018681717334, 15.3018681717334, 15.3018681717334, 15.3018681717334, 22.6249076595181, 
            22.6249076595181, 22.6249076595181, 22.6249076595181, 22.6249076595181, 22.6249076595181, 18.6276349250829, 18.6276349250829, 
            18.6276349250829, 18.6276349250829, 18.6276349250829, 18.6276349250829, 10.1028335941987, 10.1028335941987, 10.1028335941987, 
            10.1028335941987, 10.1028335941987, 10.1028335941987, 4.35747240213746, 4.35747240213746, 4.35747240213746, 4.35747240213746, 
            4.35747240213746, 4.35747240213746, 1.66524139557212, 1.66524139557212, 1.66524139557212, 1.66524139557212, 1.66524139557212, 
            1.66524139557212, -2.78928833914141, 2.71071166085859, 0.210711660858594, -3.78928833914141, -0.789288339141406, 
            -4.78928833914141, 13.6981318282666, -0.301868171733446, -5.30186817173345, 4.69813182826655, 4.69813182826655, 
            6.69813182826655, -5.62490765951814, -2.62490765951814, -4.62490765951814, 0.37509234048186, 1.37509234048186, 
            -2.62490765951814, -3.62763492508287, 3.37236507491713, -2.62763492508287, -4.62763492508287, 3.37236507491713, 
            2.37236507491713, 4.89716640580131, -1.10283359419869, 1.89716640580131, -1.10283359419869, -1.10283359419869, 
            0.897166405801308, -1.35747240213746, -2.35747240213746, -0.357472402137461, 3.64252759786254, 2.64252759786254, 
            7.64252759786254, -1.56524139557212, 0.334758604427882, -1.56524139557212, -0.665241395572118, 1.33475860442788, 
            0.334758604427882), .Dim = c(42L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = DW ~ 
            Dose, data = leaflength, fct = CRS.4c()), data = structure(list(Dose = c(0, 0, 0, 0, 0, 0, 0.01, 0.01, 0.01, 
            0.01, 0.01, 0.01, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 100, 100, 100, 100, 
            100, 100, 1000, 1000, 1000, 1000, 1000, 1000), DW = c(8, 13.5, 11, 7, 10, 6, 29, 15, 10, 20, 20, 22, 17, 20, 
            18, 23, 24, 20, 15, 22, 16, 14, 22, 21, 15, 9, 12, 9, 9, 11, 3, 2, 4, 8, 7, 12, 0.1, 2, 0.1, 1, 3, 2), `1` = c(1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", 
            "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", 
            "41", "42")), parmMat = structure(c(0.479989997559277, 10.7892883391414, 0.0140085424006819, 414.101014494687), 
            .Dim = c(4L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * exp(-1/(dose^alpha)))/(1 + exp(parmMat[, 1] * (log(dose) - 
                log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), alpha = 0.25), 
            parent = baseenv())), ssfct = genthat::with_env(function(dframe) {
            initval <- llogistic()$ssfct(dframe)
            initval[5] <- (2 * (median(dframe[, 2]) - initval[2]) - (initval[3] - initval[2])) * exp(1/(initval[4]^alpha))
            return(initval[notFixed])
        }, env = list2env(list(notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), median = stats::median, llogistic = drc::llogistic, 
            alpha = 0.25), parent = baseenv())), names = c("b", "d", "e", "f"), deriv1 = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            t0 <- exp(-1/(dose^alpha))
            t1 <- parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * t0
            t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
            t3 <- 1 + t2
            t4 <- (1 + t2)^(-2)
            cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1]) * t4, 1 - 1/t3, 1/t3, t1 * t2 * (parmMat[, 1]/parmMat[, 4]) * 
                t4, t0/t3)[, notFixed]
        }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, 
            TRUE, TRUE), alpha = 0.25), parent = baseenv())), deriv2 = NULL, edfct = genthat::with_env(function(parm, respl, 
            reference, type, lower = 1e-04, upper = 10000, ...) {
            interval <- c(lower, upper)
            parmVec[notFixed] <- parm
            p <- EDhelper(parmVec, respl, reference, type, TRUE)
            tempVal <- (100 - p)/100
            helpFct <- function(dose) {
                parmVec[2] + (parmVec[3] - parmVec[2] + parmVec[5] * exp(-1/(dose^alpha)))/(1 + exp(parmVec[1] * (log(dose) - 
                  log(parmVec[4]))))
            }
            doseVec <- exp(seq(log(interval[1]), log(interval[2]), length = 1000))
            maxAt <- doseVec[which.max(helpFct(doseVec))]
            eqn <- function(dose) {
                tempVal * (1 + exp(parmVec[1] * (log(dose) - log(parmVec[4])))) - (1 + parmVec[5] * exp(-1/(dose^alpha))/(parmVec[3] - 
                  parmVec[2]))
            }
            EDp <- uniroot(eqn, lower = maxAt, upper = upper)$root
            EDdose <- EDp
            tempVal1 <- exp(parmVec[1] * (log(EDdose) - log(parmVec[4])))
            tempVal2 <- parmVec[3] - parmVec[2]
            derParm <- c(tempVal * tempVal1 * (log(EDdose) - log(parmVec[4])), -parmVec[5] * exp(-1/(EDdose^alpha))/((tempVal2)^2), 
                parmVec[5] * exp(-1/(EDdose^alpha))/((tempVal2)^2), -tempVal * tempVal1 * parmVec[1]/parmVec[4], -exp(-1/(EDdose^alpha))/tempVal2)
            derDose <- tempVal * tempVal1 * parmVec[1]/EDdose - parmVec[5]/tempVal2 * exp(-1/(EDdose^alpha))/(EDdose^(1 + 
                alpha)) * alpha
            EDder <- derParm/derDose
            return(list(EDp, EDder[notFixed]))
        }, env = list2env(list(uniroot = stats::uniroot, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), EDhelper = drc:::EDhelper, 
            alpha = 0.25), parent = baseenv())), maxfct = genthat::with_env(function(parm, lower = 0.001, upper = 1000) {
            parmVec[notFixed] <- parm
            optfct <- function(t) {
                expTerm1 <- parmVec[5] * exp(-1/(t^alpha))
                expTerm2 <- exp(parmVec[1] * (log(t) - log(parmVec[4])))
                return(expTerm1 * alpha/(t^(alpha + 1)) * (1 + expTerm2) - (parmVec[3] - parmVec[2] + expTerm1) * expTerm2 * 
                  parmVec[1]/t)
            }
            ED1 <- edfct(parm, 1, lower, upper)[[1]]
            doseVec <- exp(seq(log(1e-06), log(ED1), length = 100))
            maxDose <- uniroot(optfct, c((doseVec[optfct(doseVec) > 0])[1], ED1))$root
            return(c(maxDose, fct(maxDose, matrix(parm, 1, length(names)))))
        }, env = list2env(list(fct = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * exp(-1/(dose^alpha)))/(1 + exp(parmMat[, 1] * (log(dose) - 
                log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5), parent = emptyenv())), edfct = genthat::with_env(function(parm, 
            respl, reference, type, lower = 1e-04, upper = 10000, ...) {
            interval <- c(lower, upper)
            parmVec[notFixed] <- parm
            p <- EDhelper(parmVec, respl, reference, type, TRUE)
            tempVal <- (100 - p)/100
            helpFct <- function(dose) {
                parmVec[2] + (parmVec[3] - parmVec[2] + parmVec[5] * exp(-1/(dose^alpha)))/(1 + exp(parmVec[1] * (log(dose) - 
                  log(parmVec[4]))))
            }
            doseVec <- exp(seq(log(interval[1]), log(interval[2]), length = 1000))
            maxAt <- doseVec[which.max(helpFct(doseVec))]
            eqn <- function(dose) {
                tempVal * (1 + exp(parmVec[1] * (log(dose) - log(parmVec[4])))) - (1 + parmVec[5] * exp(-1/(dose^alpha))/(parmVec[3] - 
                  parmVec[2]))
            }
            EDp <- uniroot(eqn, lower = maxAt, upper = upper)$root
            EDdose <- EDp
            tempVal1 <- exp(parmVec[1] * (log(EDdose) - log(parmVec[4])))
            tempVal2 <- parmVec[3] - parmVec[2]
            derParm <- c(tempVal * tempVal1 * (log(EDdose) - log(parmVec[4])), -parmVec[5] * exp(-1/(EDdose^alpha))/((tempVal2)^2), 
                parmVec[5] * exp(-1/(EDdose^alpha))/((tempVal2)^2), -tempVal * tempVal1 * parmVec[1]/parmVec[4], -exp(-1/(EDdose^alpha))/tempVal2)
            derDose <- tempVal * tempVal1 * parmVec[1]/EDdose - parmVec[5]/tempVal2 * exp(-1/(EDdose^alpha))/(EDdose^(1 + 
                alpha)) * alpha
            EDder <- derParm/derDose
            return(list(EDp, EDder[notFixed]))
        }, env = list2env(list(EDhelper = drc:::EDhelper), parent = emptyenv())), uniroot = stats::uniroot, notFixed = c(TRUE, 
            FALSE, TRUE, TRUE, TRUE), names = c("b", "d", "e", "f"), alpha = 0.25), parent = baseenv())), name = "CRS.4c", 
            text = "Cedergreen-Ritz-Streibig with lower limit 0 (alpha=.25)", noParm = 4L), class = "mllogistic"), robust = NULL, 
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
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 
            1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * exp(-1/(dose^alpha)))/(1 + exp(parmMat[, 1] * (log(dose) - 
                log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), alpha = 0.25), 
            parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
            weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, resp = structure(c(8, 13.5, 11, 7, 10, 6, 29, 
                15, 10, 20, 20, 22, 17, 20, 18, 23, 24, 20, 15, 22, 16, 14, 22, 21, 15, 9, 12, 9, 9, 11, 3, 2, 4, 8, 7, 12, 
                0.1, 2, 0.1, 1, 3, 2), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", 
                "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", 
                "33", "34", "35", "36", "37", "38", "39", "40", "41", "42")), doseScaling = 1, dose = structure(c(0, 0, 0, 
                0, 0, 0, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 
                10, 10, 10, 100, 100, 100, 100, 100, 100, 1000, 1000, 1000, 1000, 1000, 1000), names = c("1", "2", "3", "4", 
                "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", 
                "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", 
                "42"))), parent = baseenv())), opdfct1 = NULL, ssfct = NULL, rvfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(), parent = baseenv()))), df.residual = 38L, sumList = list(lenData = 42L, alternative = NULL, 
            df.residual = 38L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(42L, 
            1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), uniqueNames = "1", numAss = 1L, cm = NULL, 
            assayNoOld = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1), assayNames = "1"), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
            parmMat[, 2] + (parmMat[, 3] - parmMat[, 2] + parmMat[, 5] * exp(-1/(dose^alpha)))/(1 + exp(parmMat[, 1] * (log(dose) - 
                log(parmMat[, 4]))))
        }, env = list2env(list(parmVec = c(0, 0, 0, 0, 0), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, TRUE), alpha = 0.25), 
            parent = baseenv())), numNames = 4L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, ciOrigLength = 1L, 
            ciOrigIndex = 1), parent = baseenv())), type = "continuous", indexMat = structure(1:4, .Dim = c(4L, 1L), .Dimnames = list(NULL, 
            "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(-0, -0, -0, -0, -0, -0, 2.37081224408923, 2.37081224408923, 
            2.37081224408923, 2.37081224408923, 2.37081224408923, 2.37081224408923, -32.0085863240564, -32.0085863240564, 
            -32.0085863240564, -32.0085863240564, -32.0085863240564, -32.0085863240564, -70.4257850242785, -70.4257850242785, 
            -70.4257850242785, -70.4257850242785, -70.4257850242785, -70.4257850242785, -63.6647497829218, -63.6647497829218, 
            -63.6647497829218, -63.6647497829218, -63.6647497829218, -63.6647497829218, -38.1260516829394, -38.1260516829394, 
            -38.1260516829394, -38.1260516829394, -38.1260516829394, -38.1260516829394, -18.5237713131298, -18.5237713131298, 
            -18.5237713131298, -18.5237713131298, -18.5237713131298, -18.5237713131298, 1, 1, 1, 1, 1, 1, 0.540361014648409, 
            0.540361014648409, 0.540361014648409, 0.540361014648409, 0.540361014648409, 0.540361014648409, 0.280209689897876, 
            0.280209689897876, 0.280209689897876, 0.280209689897876, 0.280209689897876, 0.280209689897876, 0.114189921257672, 
            0.114189921257672, 0.114189921257672, 0.114189921257672, 0.114189921257672, 0.114189921257672, 0.0409395568418959, 
            0.0409395568418959, 0.0409395568418959, 0.0409395568418959, 0.0409395568418959, 0.0409395568418959, 0.0139383456892362, 
            0.0139383456892362, 0.0139383456892362, 0.0139383456892362, 0.0139383456892362, 0.0139383456892362, 0.00465896099250977, 
            0.00465896099250977, 0.00465896099250977, 0.00465896099250977, 0.00465896099250977, 0.00465896099250977, 0, 0, 
            0, 0, 0, 0, 240.990849007142, 240.990849007142, 240.990849007142, 240.990849007142, 240.990849007142, 240.990849007142, 
            557.997238321639, 557.997238321639, 557.997238321639, 557.997238321639, 557.997238321639, 557.997238321639, 565.376266310455, 
            565.376266310455, 565.376266310455, 565.376266310455, 565.376266310455, 565.376266310455, 331.992610063882, 331.992610063882, 
            331.992610063882, 331.992610063882, 331.992610063882, 331.992610063882, 147.223776534473, 147.223776534473, 147.223776534473, 
            147.223776534473, 147.223776534473, 147.223776534473, 56.7921548712295, 56.7921548712295, 56.7921548712295, 56.7921548712295, 
            56.7921548712295, 56.7921548712295, 0, 0, 0, 0, 0, 0, 0.0228730600648704, 0.0228730600648704, 0.0228730600648704, 
            0.0228730600648704, 0.0228730600648704, 0.0228730600648704, 0.0473354177692797, 0.0473354177692797, 0.0473354177692797, 
            0.0473354177692797, 0.0473354177692797, 0.0473354177692797, 0.0420081244196835, 0.0420081244196835, 0.0420081244196835, 
            0.0420081244196835, 0.0420081244196835, 0.0420081244196835, 0.0233303579870335, 0.0233303579870335, 0.0233303579870335, 
            0.0233303579870335, 0.0233303579870335, 0.0233303579870335, 0.0101595683764731, 0.0101595683764731, 0.0101595683764731, 
            0.0101595683764731, 0.0101595683764731, 0.0101595683764731, 0.00389995306829618, 0.00389995306829618, 0.00389995306829618, 
            0.00389995306829618, 0.00389995306829618, 0.00389995306829618), .Dim = c(42L, 4L), .Dimnames = list(c("1", "2", 
            "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", 
            "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", 
            "42"), NULL)), curveVarNam = "1", origData = structure(list(Dose = c(0, 0, 0, 0, 0, 0, 0.01, 0.01, 0.01, 0.01, 
            0.01, 0.01, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 100, 100, 100, 100, 100, 
            100, 1000, 1000, 1000, 1000, 1000, 1000), DW = c(8, 13.5, 11, 7, 10, 6, 29, 15, 10, 20, 20, 22, 17, 20, 18, 23, 
            24, 20, 15, 22, 16, 14, 22, 21, 15, 9, 12, 9, 9, 11, 3, 2, 4, 8, 7, 12, 0.1, 2, 0.1, 1, 3, 2)), class = "data.frame", 
            row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", 
                "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", 
                "37", "38", "39", "40", "41", "42")), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 
            0, 0, 0, 0, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 
            10, 10, 100, 100, 100, 100, 100, 100, 1000, 1000, 1000, 1000, 1000, 1000), names = c("1", "2", "3", "4", "5", 
            "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", 
            "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42")), 
            origResp = c(8, 13.5, 11, 7, 10, 6, 29, 15, 10, 20, 20, 22, 17, 20, 18, 23, 24, 20, 15, 22, 16, 14, 22, 21, 15, 
                9, 12, 9, 9, 11, 3, 2, 4, 8, 7, 12, 0.1, 2, 0.1, 1, 3, 2), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1), resp = c(8, 13.5, 11, 7, 10, 6, 29, 15, 10, 20, 20, 22, 17, 20, 18, 23, 24, 20, 15, 22, 
                16, 14, 22, 21, 15, 9, 12, 9, 9, 11, 3, 2, 4, 8, 7, 12, 0.1, 2, 0.1, 1, 3, 2), names = list(dName = "Dose", 
                orName = "DW", wName = "weights", cNames = "1", rName = "")), coefficients = structure(c(0.479989997559277, 
            10.7892883391414, 0.0140085424006819, 414.101014494687), names = c("b:(Intercept)", "d:(Intercept)", "e:(Intercept)", 
            "f:(Intercept)")), boxcox = NULL, indexMat2 = c(1, 2, 3, 4)), class = "drc")
    drc:::fitted.drc(object = leaflength.crs4c1)
}




