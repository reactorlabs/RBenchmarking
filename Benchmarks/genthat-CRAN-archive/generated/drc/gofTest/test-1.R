library(drc)

function_to_run <- function() {
    drm <- drc::drm
    finney.ex19 <- structure(list(logdose = c(2.17, 2, 1.68, 1.08, -Inf, 1.79, 1.66, 1.49, 1.17, 0.57), n = c(142, 127, 128, 
        126, 129, 125, 117, 127, 51, 132), r = c(142, 126, 115, 58, 21, 125, 115, 114, 40, 37), treatment = structure(c(1L, 
        1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("w213", "w214"), class = "factor")), class = "data.frame", row.names = c(NA, 
        -10L))
    LL.3u <- drc::LL.3u
    n <- c(142, 127, 128, 126, 129, 125, 117, 127, 51, 132)
    treatment <- structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("w213", "w214"), class = "factor")
    testList <- list(anovaTest = NULL, gofTest = genthat::with_env(function(resp, weights, fitted, dfres) {
        zeroTol <- 1e-12
        indVec <- ((fitted < zeroTol) | (fitted > 1 - zeroTol))
        dfReduc <- sum(indVec)
        total <- weights
        success <- resp * weights
        expected <- total * fitted
        c(sum(((success - expected)^2/(expected * (1 - fitted)))[!indVec]), dfres - dfReduc)
    }, env = list2env(list(), parent = baseenv())))
    object <- structure(list(varParm = NULL, fit = list(par = c(-2.18304174501789, -2.11725782975866, 0.17172535731265, 16.5997488851042, 
        9.55376550725122), value = 354.888228919317, counts = structure(c(76L, 19L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(22.4931036657227, 0, 2.1076257893574, 1.23728101452501, 
            7.95852611892915e-10, 0, 30.6002185075787, 22.3210871683768, -1.70702957601774e-10, 3.63034949659758, 2.1076257893574, 
            22.3210871683768, 1696.08554489737, -10.4305155989729, -18.3415501906181, 1.23728101452501, -1.70702957601774e-10, 
            -10.4305155989729, 0.490762456110434, 0, 7.95852611892915e-10, 3.63034949659758, -18.3415501906181, 0, 1.24321057416684), 
            .Dim = c(5L, 5L)), ovalue = 354.888228919317), curve = list(genthat::with_env(function(dose) {
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
    }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, TRUE, 
        FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(-2.18304174501789, -2.11725782975866, 0.17172535731265, 
        0.17172535731265, 16.5997488851042, 9.55376550725122), .Dim = 2:3, .Dimnames = list(c("w213", "w214"), NULL)), numNames = 3L, 
        numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), 
        10), summary = c(NA, NA, NA, 354.888228919317, 5, 10), start = c(-5.37844339453295, -2.69347539622745, 0.281083204134367, 
        41.6245122956626, 8.92806940810425), parNames = list(c("b:w213", "b:w214", "c:(Intercept)", "e:w213", "e:w214"), 
        c("b", "b", "c", "e", "e"), c("w213", "w214", "(Intercept)", "w213", "w214")), predres = structure(c(0.99306803516986, 
        0.983890087450625, 0.925326897879957, 0.445778972858508, 0.17172535731265, 0.984322880182065, 0.97093986289, 0.936320496965873, 
        0.764892019014218, 0.270486878778396, 0.00693196483013958, 0.00823589680134373, -0.0268893978799568, 0.0145384874589523, 
        -0.00893465963823095, 0.0156771198179345, 0.0119661200159826, -0.0386827016902829, 0.0194217064759782, 0.00981615152463439), 
        .Dim = c(10L, 2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = r/n ~ logdose, 
        curveid = treatment, pmodels = data.frame(treatment, 1, treatment), weights = n, data = finney.ex19, fct = LL.3u(), 
        type = "binomial", logDose = 10), data = structure(list(logdose = c(2.17, 2, 1.68, 1.08, -Inf, 1.79, 1.66, 1.49, 
        1.17, 0.57), `r/n` = c(1, 0.992125984251969, 0.8984375, 0.46031746031746, 0.162790697674419, 1, 0.982905982905983, 
        0.897637795275591, 0.784313725490196, 0.28030303030303), treatment = c(1, 1, 1, 1, 2, 2, 2, 2, 2, 2), treatment = structure(c(1L, 
        1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("w213", "w214"), class = "factor"), weights = c(142, 127, 128, 126, 
        129, 125, 117, 127, 51, 132)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")), 
        parmMat = structure(c(-2.18304174501789, 0.17172535731265, 16.5997488851042, -2.11725782975866, 0.17172535731265, 
            9.55376550725122), .Dim = 3:2, .Dimnames = list(NULL, c("w213", "w214"))), fct = structure(list(fct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), 
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
                fixed = c(NA, NA, 1, NA, 1), findcd = drc:::findcd), parent = baseenv())), names = c("b", "c", "e"), deriv1 = genthat::with_env(function(dose, 
                parm) {
                parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
                parmMat[, notFixed] <- parm
                t1 <- parmMat[, 3] - parmMat[, 2]
                t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
                t5 <- (1 + t2)^parmMat[, 5]
                cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * 
                  parmMat[, 5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + 
                  t2), t5))[, notFixed]
            }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, 
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
            }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE)), 
                parent = baseenv())), edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
                parmVec[notFixed] <- parm
                p <- EDhelper(parmVec, respl, reference, type)
                tempVal <- log((100 - p)/100)
                EDp <- parmVec[4] * (exp(-tempVal/parmVec[5]) - 1)^(1/parmVec[1])
                EDder <- EDp * c(-log(exp(-tempVal/parmVec[5]) - 1)/(parmVec[1]^2), 0, 0, 1/parmVec[4], exp(-tempVal/parmVec[5]) * 
                  tempVal/(parmVec[5]^2) * (1/parmVec[1]) * ((exp(-tempVal/parmVec[5]) - 1)^(-1)))
                return(list(EDp, EDder[notFixed]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE), EDhelper = drc:::EDhelper), parent = baseenv())), 
            inversion = genthat::with_env(function(y, parm) {
                parmVec[notFixed] <- parm
                exp(log(((parmVec[3] - parmVec[2])/(y - parmVec[2]))^(1/parmVec[5]) - 1)/parmVec[1] + log(parmVec[4]))
            }, env = list2env(list(notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), scaleFct = genthat::with_env(function(doseScaling, 
                respScaling) {
                c(1, respScaling, respScaling, doseScaling, 1)[notFixed]
            }, env = list2env(list(notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), name = "LL.3u", text = "Log-logistic (ED50 as parameter) with upper limit at 1", 
            noParm = 3L, lowerAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                parmVec[parmNo]
            }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
                parmVec[indexVec] <- parm
                signVal * parmVec[parmNo]
            }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(TRUE, TRUE, FALSE, TRUE, FALSE)), parent = baseenv())), 
            retFct = genthat::with_env(function(doseScaling, respScaling) {
                fct <- function(dose, parm) {
                  parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
                  parmMat[, notFixed] <- parm
                  cParm <- parmMat[, 2]
                  cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
                }
                fct
            }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, TRUE, FALSE)), 
                parent = baseenv())), fixed = c(NA, NA, 1, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1), 
            .Dim = c(10L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("factor(pmodels[, i])w213", 
                "factor(pmodels[, i])w214")), assign = c(1L, 1L), contrasts = list(`factor(pmodels[, i])` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(10L, 1L)), structure(c(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 1, 1, 1, 1, 1, 1), .Dim = c(10L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
                "10"), c("factor(pmodels[, i])w213", "factor(pmodels[, i])w214")), assign = c(1L, 1L), contrasts = list(`factor(pmodels[, i])` = "contr.treatment"))), 
            parmIndex = list(c(1, 2), 3, c(4, 5)), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
            parm) {
            parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            cParm <- parmMat[, 2]
            cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, 
            TRUE, FALSE), doseScaling = 10), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, 
            TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), zeroTol = 1e-12, weights = c(142, 
            127, 128, 126, 129, 125, 117, 127, 51, 132), resp = structure(c(1, 0.992125984251969, 0.8984375, 0.46031746031746, 
            0.162790697674419, 1, 0.982905982905983, 0.897637795275591, 0.784313725490196, 0.28030303030303), names = c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10")), doseScaling = 10, dose = structure(c(147.910838816821, 100, 47.8630092322638, 
            12.0226443461741, 0, 61.6595001861482, 45.7088189614875, 30.9029543251359, 14.7910838816821, 3.71535229097173), 
            names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))), parent = baseenv())), ssfct = NULL, rvfct = NULL, 
            vcovfct = genthat::with_env(function(object) {
                solve(object$fit$hessian)
            }, env = list2env(list(), parent = baseenv())), parmfct = genthat::with_env(function(fit, fixed = TRUE) {
                fit$par
            }, env = list2env(list(), parent = baseenv()))), df.residual = 5L, sumList = list(lenData = 10L, alternative = NULL, 
            df.residual = 5L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
        }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1), 
            .Dim = c(10L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("factor(pmodels[, i])w213", 
                "factor(pmodels[, i])w214")), assign = c(1L, 1L), contrasts = list(`factor(pmodels[, i])` = "contr.treatment")), 
            structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(10L, 1L)), structure(c(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 1, 1, 1, 1, 1, 1), .Dim = c(10L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
                "10"), c("factor(pmodels[, i])w213", "factor(pmodels[, i])w214")), assign = c(1L, 1L), contrasts = list(`factor(pmodels[, i])` = "contr.treatment"))), 
            parmIndex = list(c(1, 2), 3, c(4, 5)), numNames = 3L), parent = baseenv())), uniqueNames = c("w213", "w214"), 
            numAss = 2L, cm = NULL, assayNoOld = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("w213", 
                "w214"), class = "factor", names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")), assayNames = c("w213", 
                "w214")), parent = baseenv())), pfFct = genthat::with_env(function(parmMat) {
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
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, FALSE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), numNames = 3L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, 
            ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), type = "binomial", indexMat = structure(c(1L, 
            3L, 4L, 2L, 3L, 5L), .Dim = 3:2, .Dimnames = list(NULL, c("w213", "w214"))), logDose = 10, cm = NULL, deriv1 = structure(c(0.0193852418476806, 
            0.0169375415092452, 0.0126072181707615, 0.00578001436367394, -0, 0.0377997773600711, 0.0339535681320944, 0.0289619832490875, 
            0.0199223221318979, 0.00594156591089918, 0.988361714383508, 0.990241799124455, 0.993310218651392, 0.997439531233583, 
            NaN, 0.971963567733061, 0.9760009789164, 0.980814004326144, 0.988411623550395, 0.997448870698809, -0.00125296752010824, 
            -0.00105255766067393, -0.000723821892887206, -0.000278189636552305, -0, -0.00500202974196329, -0.0042994936948486, 
            -0.00345417658815393, -0.00210249017363975, -0.000467085784250376), .Dim = c(10L, 3L), .Dimnames = list(c("1", 
            "2", "3", "4", "5", "6", "7", "8", "9", "10"), NULL)), curveVarNam = "treatment", origData = structure(list(logdose = c(2.17, 
            2, 1.68, 1.08, -Inf, 1.79, 1.66, 1.49, 1.17, 0.57), n = c(142, 127, 128, 126, 129, 125, 117, 127, 51, 132), r = c(142, 
            126, 115, 58, 21, 125, 115, 114, 40, 37), treatment = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("w213", 
            "w214"), class = "factor")), class = "data.frame", row.names = c(NA, -10L)), weights = c(142, 127, 128, 126, 
            129, 125, 117, 127, 51, 132), dataList = list(dose = structure(c(2.17, 2, 1.68, 1.08, -Inf, 1.79, 1.66, 1.49, 
            1.17, 0.57), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")), origResp = c(1, 0.992125984251969, 
            0.8984375, 0.46031746031746, 0.162790697674419, 1, 0.982905982905983, 0.897637795275591, 0.784313725490196, 0.28030303030303), 
            weights = c(142, 127, 128, 126, 129, 125, 117, 127, 51, 132), curveid = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 
                2L, 2L, 2L), .Label = c("w213", "w214"), class = "factor", names = c("1", "2", "3", "4", "5", "6", "7", "8", 
                "9", "10")), resp = c(1, 0.992125984251969, 0.8984375, 0.46031746031746, 0.162790697674419, 1, 0.982905982905983, 
                0.897637795275591, 0.784313725490196, 0.28030303030303), names = list(dName = "logdose", orName = "r/n", 
                wName = "n", cNames = "treatment", rName = "")), coefficients = structure(c(-2.18304174501789, -2.11725782975866, 
            0.17172535731265, 16.5997488851042, 9.55376550725122), names = c("b:w213", "b:w214", "c:(Intercept)", "e:w213", 
            "e:w214")), boxcox = NULL, indexMat2 = structure(c(1, 2, 3, 3, 4, 5), .Dim = 2:3)), class = "drc")
    drc:::gofTest(object = object, gofTest = testList$gofTest)
}




