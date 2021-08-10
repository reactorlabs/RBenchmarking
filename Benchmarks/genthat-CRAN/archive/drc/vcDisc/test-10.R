library(drc)

function_to_run <- function() {
    daphnids <- drc::daphnids
    drm <- drc::drm
    LL.2 <- drc::LL.2
    time <- stats::time
    object <- structure(list(varParm = NULL, fit = list(par = c(-1.17383713210242, -1.84967560822106, 5134.03344069216, 1509.06538519702), 
        value = 129.657466905903, counts = structure(c(47L, 16L), names = c("function", "gradient")), convergence = TRUE, 
        message = NULL, hessian = structure(c(26.9510080477332, 0, -0.00283285787942618, -1.58785503534718e-12, 0, 12.8785146193116, 
            0, 0.00122103413978088, -0.00283285787942618, 0, 1.19325840972564e-06, 0, -1.58785503534718e-12, 0.00122103413978088, 
            0, 2.84814671826624e-05), .Dim = c(4L, 4L)), ovalue = 129.657466905903), curve = list(genthat::with_env(function(dose) {
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
    }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, 
        FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(-1.17383713210242, -1.84967560822106, 5134.03344069216, 
        1509.06538519702), .Dim = c(2L, 2L), .Dimnames = list(c("24h", "48h"), NULL)), numNames = 2L, numAss = 2L, iVec = 1:2, 
        complete.cases = stats::complete.cases, ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), NULL), summary = c(NA, 
        NA, NA, 129.657466905903, 12, 16), start = c(-2.23742948802862, -2.89385991928168, 2055.73248879023, 1619.36433484592), 
        parNames = list(c("b:24h", "b:48h", "e:24h", "e:48h"), c("b", "b", "e", "e"), c("24h", "48h", "24h", "48h")), predres = structure(c(0.0102938803220266, 
            0.0476231880495764, 0.0744885720512999, 0.153548385880424, 0.248426552169505, 0.364597717073682, 0.525310651438432, 
            0.675710787725898, 0.00717527205194661, 0.0790270177772662, 0.153725217749243, 0.395291812414482, 0.627230476529792, 
            0.800507945759485, 0.9186701846218, 0.968371290206061, -0.0102938803220266, 0.0023768119504236, 0.0755114279487001, 
            -0.003548385880424, 0.00157344783049515, -0.0645977170736824, -0.175310651438432, 0.174289212274102, -0.00717527205194661, 
            -0.0790270177772662, 0.146274782250757, 0.00470818758551772, -0.0772304765297919, -0.000507945759485207, -0.0186701846217997, 
            0.0316287097939385), .Dim = c(16L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = no/total ~ 
            dose, curveid = time, weights = total, data = daphnids, fct = LL.2(), type = "binomial"), data = structure(list(dose = c(105, 
            400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 9595.57, 105, 400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 
            9595.57), `no/total` = c(0, 0.05, 0.15, 0.15, 0.25, 0.3, 0.35, 0.85, 0, 0, 0.3, 0.4, 0.55, 0.8, 0.9, 1), time = c(1, 
            1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2), time = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L), .Label = c("24h", "48h"), class = "factor"), weights = c(20L, 20L, 20L, 20L, 20L, 20L, 20L, 
            20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", 
            "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")), parmMat = structure(c(-1.17383713210242, 5134.03344069216, 
            -1.84967560822106, 1509.06538519702), .Dim = c(2L, 2L), .Dimnames = list(NULL, c("24h", "48h"))), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), 
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
                fixed = c(NA, 0, 1, NA, 1), findcd = drc:::findcd), parent = baseenv())), names = c("b", "e"), deriv1 = genthat::with_env(function(dose, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t5 <- (1 + t2)^parmMat[, 5]
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * 
                  parmMat[, 5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + 
                  t2), t5))[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, 
                FALSE, TRUE, FALSE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, derivx = genthat::with_env(function(x, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                temp1 <- x/parmMat[, 4]
                temp2 <- 1 + (temp1)^parmMat[, 1]
                temp3 <- parmMat[, 5] * (temp2^(parmMat[, 5] - 1)) * (parmMat[, 1]/parmMat[, 4]) * temp1^(parmMat[, 1] - 
                  1)
                temp4 <- temp2^(2 * parmMat[, 5])
                (-(parmMat[, 3] - parmMat[, 2]) * temp3)/temp4
            }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), 
                parent = baseenv())), edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log((100 - p)/100)
                EDp <- parmVec[4] * (exp(-tempVal/parmVec[5]) - 1)^(1/parmVec[1])
                EDder <- EDp * c(-log(exp(-tempVal/parmVec[5]) - 1)/(parmVec[1]^2), 0, 0, 1/parmVec[4], exp(-tempVal/parmVec[5]) * 
                  tempVal/(parmVec[5]^2) * (1/parmVec[1]) * ((exp(-tempVal/parmVec[5]) - 1)^(-1)))
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            inversion = genthat::with_env(function(y, parm) {
                parmVec[notFixed] <- parm
                exp(log(((parmVec[3] - parmVec[2])/(y - parmVec[2]))^(1/parmVec[5]) - 1)/parmVec[1] + log(parmVec[4]))
            }, env = list2env(list(notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), scaleFct = genthat::with_env(function(doseScaling, 
                respScaling) {
                c(1, respScaling, respScaling, doseScaling, 1)[notFixed]
            }, env = list2env(list(notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), name = "LL.2", text = "Log-logistic (ED50 as parameter) with lower limit at 0 and upper limit at 1", 
            noParm = 2L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                signVal * parmVec[parmNo]
            }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), 
            retFct = genthat::with_env(function(doseScaling, respScaling) {
                fct <- function(dose, parm) {
                  parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
                  parmMat[, notFixed] <- parm
                  cParm <- parmMat[, 2]
                  cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
                }
                fct
            }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), 
                parent = baseenv())), fixed = c(NA, 0, 1, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
            total <- (object$data)[, 5]
            success <- total * (object$data)[, 2]
            c(sum(log(choose(total, success))) - object$fit$ovalue, object$sumList$lenData - df.residual(object))
        }, env = list2env(list(df.residual = stats::df.residual), parent = baseenv())), opfct = genthat::with_env(function(c) {
            prob <- multCurves(dose/doseScaling, c)
            omZT <- 1 - zeroTol
            prob[prob > omZT] <- omZT
            prob[prob < zeroTol] <- zeroTol
            -sum((resp * weights) * log(prob/(1 - prob)) + (weights * log(1 - prob)))
        }, env = list2env(list(multCurves = genthat::with_env(function(dose, parm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
            0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(16L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", 
            "8", "9", "10", "11", "12", "13", "14", "15", "16"), c("24h", "48h")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1), 
                .Dim = c(16L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
                  "14", "15", "16"), c("24h", "48h")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
            parmIndex = list(c(1, 2), c(3, 4)), numNames = 2L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, 
            TRUE, FALSE), doseScaling = 1000), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
            zeroTol = 1e-12, weights = c(20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L), 
            resp = structure(c(0, 0.05, 0.15, 0.15, 0.25, 0.3, 0.35, 0.85, 0, 0, 0.3, 0.4, 0.55, 0.8, 0.9, 1), names = c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")), doseScaling = 1000, dose = structure(c(105, 
                400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 9595.57, 105, 400.07, 600.1, 1199.2, 1999.33, 3198.52, 
                5596.91, 9595.57), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", 
                "16"))), parent = baseenv())), ssfct = NULL, rvfct = NULL, vcovfct = genthat::with_env(function(object) {
            solve(object$fit$hessian)
        }, env = list2env(list(), parent = baseenv())), parmfct = genthat::with_env(function(fit, fixed = TRUE) {
            fit$par
        }, env = list2env(list(), parent = baseenv()))), df.residual = 12L, sumList = list(lenData = 16L, alternative = NULL, 
            df.residual = 12L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
            0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(16L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", 
            "8", "9", "10", "11", "12", "13", "14", "15", "16"), c("24h", "48h")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1), 
                .Dim = c(16L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
                  "14", "15", "16"), c("24h", "48h")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
            parmIndex = list(c(1, 2), c(3, 4)), numNames = 2L), parent = baseenv())), uniqueNames = c("24h", "48h"), numAss = 2L, 
            cm = NULL, assayNoOld = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("24h", 
                "48h"), class = "factor", names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
                "14", "15", "16")), assayNames = c("24h", "48h")), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), numNames = 2L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, 
            ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), type = "binomial", indexMat = structure(c(1L, 
            3L, 2L, 4L), .Dim = c(2L, 2L), .Dimnames = list(NULL, c("24h", "48h"))), logDose = NULL, cm = NULL, deriv1 = structure(c(0.0396278009424352, 
            0.115746854516298, 0.14798324907595, 0.189009033634207, 0.176083122926881, 0.10962524223135, -0.0215254648690939, 
            -0.137043402301666, 0.0189869271469961, 0.0966255042973148, 0.119965907128815, 0.0549390850569773, -0.0657764837207959, 
            -0.119962496585988, -0.0979311173492052, -0.0566566308442217, -2.32934877586294e-06, -1.03699444105552e-05, -1.57623361433479e-05, 
            -2.97164237915967e-05, -4.26892564965342e-05, -5.29677916045342e-05, -5.70131247116597e-05, -5.01005512765513e-05, 
            -8.73169323779008e-06, -8.92092720176334e-05, -0.000159457161423941, -0.000292988908597112, -0.000286586060635783, 
            -0.000195739629343545, -9.15792157684938e-05, -3.75414371177149e-05), .Dim = c(16L, 2L), .Dimnames = list(c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"), NULL)), curveVarNam = "time", 
        origData = structure(list(dose = c(105, 400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 9595.57, 105, 400.07, 600.1, 
            1199.2, 1999.33, 3198.52, 5596.91, 9595.57), no = c(0L, 1L, 3L, 3L, 5L, 6L, 7L, 17L, 0L, 0L, 6L, 8L, 11L, 16L, 
            18L, 20L), total = c(20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L), time = structure(c(1L, 
            1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("24h", "48h"), class = "factor")), class = "data.frame", 
            row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")), weights = c(20L, 
            20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L), dataList = list(dose = structure(c(105, 
            400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 9595.57, 105, 400.07, 600.1, 1199.2, 1999.33, 3198.52, 5596.91, 
            9595.57), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")), 
            origResp = c(0, 0.05, 0.15, 0.15, 0.25, 0.3, 0.35, 0.85, 0, 0, 0.3, 0.4, 0.55, 0.8, 0.9, 1), weights = c(20L, 
                20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L), curveid = structure(c(1L, 1L, 
                1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("24h", "48h"), class = "factor", names = c("1", 
                "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")), resp = c(0, 0.05, 0.15, 
                0.15, 0.25, 0.3, 0.35, 0.85, 0, 0, 0.3, 0.4, 0.55, 0.8, 0.9, 1), names = list(dName = "dose", orName = "no/total", 
                wName = "total", cNames = "time", rName = "")), coefficients = structure(c(-1.17383713210242, -1.84967560822106, 
            5134.03344069216, 1509.06538519702), names = c("b:24h", "b:48h", "e:24h", "e:48h")), boxcox = NULL, indexMat2 = structure(c(1, 
            2, 3, 4), .Dim = c(2L, 2L))), class = "drc")
    drc:::vcDisc(object = object)
}




