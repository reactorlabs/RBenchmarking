

genthat_extracted_call <- function() {
    drm <- drc::drm
    H.virescens <- drc::H.virescens
    LL.2 <- drc::LL.2
    Hv.m1 <- structure(list(varParm = NULL, fit = list(par = c(-1.53537089405306, 9.60555909567247, 4.69001133575563), value = 106.620426766587, 
        counts = structure(c(41L, 11L), names = c("function", "gradient")), convergence = TRUE, message = NULL, hessian = structure(c(28.3542914031777, 
            -0.390036389963208, 0.275685130207093, -0.390036389963208, 0.432617171319698, 0, 0.275685130207093, 0, 1.85558268528116), 
            .Dim = c(3L, 3L)), ovalue = 106.620426766587), curve = list(genthat::with_env(function(dose) {
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
        FALSE), doseScaling = 1), parent = baseenv())), parmMat = structure(c(-1.53537089405306, -1.53537089405306, 4.69001133575563, 
        9.60555909567247), .Dim = c(2L, 2L), .Dimnames = list(c("M", "F"), NULL)), numNames = 2L, numAss = 2L, iVec = 1:2, 
        complete.cases = stats::complete.cases, ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), NULL), summary = c(NA, 
        NA, NA, 106.620426766587, 9, 12), start = c(-3.30907123379742, 5.9056251242693, 5.46804733638218), parNames = list(c("b:(Intercept)", 
        "e:sexF", "e:sexM"), c("b", "e", "e"), c("(Intercept)", "sexF", "sexM")), predres = structure(c(0.0852692457669545, 
        0.212724908452217, 0.439217128341934, 0.694214709596149, 0.868085486466622, 0.950186588289708, 0.030074720627699, 
        0.0824665668322699, 0.206679494344452, 0.430252742495664, 0.686416294853055, 0.863851651728387, -0.0352692457669545, 
        -0.012724908452217, 0.0107828716580662, -0.0442147095961491, 0.0319145135333776, 0.0498134117102919, -0.030074720627699, 
        0.0175334331677301, 0.0933205056555481, 0.0697472575043357, -0.0864162948530546, -0.0638516517283874), .Dim = c(12L, 
        2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = numdead/total ~ dose, curveid = sex, 
        pmodels = list(~1, ~sex - 1), weights = total, data = H.virescens, fct = LL.2(), type = "binomial"), data = structure(list(dose = c(1, 
        2, 4, 8, 16, 32, 1, 2, 4, 8, 16, 32), `numdead/total` = c(0.05, 0.2, 0.45, 0.65, 0.9, 1, 0, 0.1, 0.3, 0.5, 0.6, 0.8), 
        sex = c(1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2), sex = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("F", 
            "M"), class = "factor"), weights = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20)), class = "data.frame", 
        row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")), parmMat = structure(c(-1.53537089405306, 
        4.69001133575563, -1.53537089405306, 9.60555909567247), .Dim = c(2L, 2L), .Dimnames = list(NULL, c("M", "F"))), fct = structure(list(fct = genthat::with_env(function(dose, 
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
            cbind(-t1 * xlogx(dose/parmMat[, 4], parmMat[, 1], parmMat[, 5] + 1) * parmMat[, 5], 1 - 1/t5, 1/t5, t1 * parmMat[, 
                5] * divAtInf(t2, (1 + t2)^(parmMat[, 5] + 1)) * parmMat[, 1]/parmMat[, 4], -t1 * divAtInf(log(1 + t2), t5))[, 
                notFixed]
        }, env = list2env(list(xlogx = drc:::xlogx, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, 
            TRUE, FALSE), divAtInf = drc:::divAtInf), parent = baseenv())), deriv2 = NULL, derivx = genthat::with_env(function(x, 
            parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            temp1 <- x/parmMat[, 4]
            temp2 <- 1 + (temp1)^parmMat[, 1]
            temp3 <- parmMat[, 5] * (temp2^(parmMat[, 5] - 1)) * (parmMat[, 1]/parmMat[, 4]) * temp1^(parmMat[, 1] - 1)
            temp4 <- temp2^(2 * parmMat[, 5])
            (-(parmMat[, 3] - parmMat[, 2]) * temp3)/temp4
        }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), 
        edfct = genthat::with_env(function(parm, respl, reference, type, ...) {
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
        }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv())), 
        fixed = c(NA, 0, 1, NA, 1)), class = "llogistic"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
    }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(12L, 1L)), structure(c(0, 
        0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0), .Dim = c(12L, 2L), .Dimnames = list(c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"), c("sexF", "sexM")), assign = c(1L, 1L), contrasts = list(sex = "contr.treatment"))), 
        parmIndex = list(1, c(2, 3)), numNames = 2L), parent = baseenv())), drcFct = genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        cParm <- parmMat[, 2]
        cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
    }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, 
        FALSE), doseScaling = 1), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), zeroTol = 1e-12, weights = c(20, 
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), resp = structure(c(0.05, 0.2, 0.45, 0.65, 0.9, 1, 0, 0.1, 0.3, 0.5, 
        0.6, 0.8), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")), doseScaling = 1, dose = structure(c(1, 
        2, 4, 8, 16, 32, 1, 2, 4, 8, 16, 32), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"))), 
        parent = baseenv())), ssfct = NULL, rvfct = NULL, vcovfct = genthat::with_env(function(object) {
        solve(object$fit$hessian)
    }, env = list2env(list(), parent = baseenv())), parmfct = genthat::with_env(function(fit, fixed = TRUE) {
        fit$par
    }, env = list2env(list(), parent = baseenv()))), df.residual = 9L, sumList = list(lenData = 12L, alternative = NULL, 
        df.residual = 9L), scaleFct = NULL, pmFct = genthat::with_env(function(fixedParm) {
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
    }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(12L, 1L)), structure(c(0, 
        0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0), .Dim = c(12L, 2L), .Dimnames = list(c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"), c("sexF", "sexM")), assign = c(1L, 1L), contrasts = list(sex = "contr.treatment"))), 
        parmIndex = list(1, c(2, 3)), numNames = 2L), parent = baseenv())), uniqueNames = c("M", "F"), numAss = 2L, cm = NULL, 
        assayNoOld = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("F", "M"), class = "factor", 
            names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")), assayNames = c("M", "F")), parent = baseenv())), 
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
        }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, 
            TRUE, FALSE), doseScaling = 1), parent = baseenv())), numNames = 2L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, 
            ciOrigLength = 2L, ciOrigIndex = c(1, 2)), parent = baseenv())), type = "binomial", indexMat = structure(c(1L, 
            3L, 1L, 2L), .Dim = c(2L, 2L), .Dimnames = list(NULL, c("M", "F"))), logDose = NULL, cm = NULL, deriv1 = structure(c(0.120541459569719, 
            0.142735216454373, 0.0391972053483422, -0.113359254058344, -0.14052514586685, -0.0908917509578105, 0.0659930406638905, 
            0.118734432129594, 0.143639470488195, 0.0448353632105974, -0.109830078144178, -0.141533533861429, -0.0255343680136685, 
            -0.054825710380268, -0.0806331116085436, -0.0694944005016537, -0.0374881912266948, -0.0154951075390765, -0.00466262551122285, 
            -0.0120945709934596, -0.0262081717160739, -0.0391828972985428, -0.0344058052805376, -0.0187993225828098), .Dim = c(12L, 
            2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"), NULL)), curveVarNam = "sex", 
        origData = structure(list(dose = c(1, 2, 4, 8, 16, 32, 1, 2, 4, 8, 16, 32), numdead = c(1, 4, 9, 13, 18, 20, 0, 2, 
            6, 10, 12, 16), total = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), sex = structure(c(2L, 2L, 2L, 2L, 
            2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("F", "M"), class = "factor")), row.names = c(NA, -12L), class = "data.frame"), 
        weights = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), dataList = list(dose = structure(c(1, 2, 4, 8, 16, 32, 
            1, 2, 4, 8, 16, 32), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")), origResp = c(0.05, 
            0.2, 0.45, 0.65, 0.9, 1, 0, 0.1, 0.3, 0.5, 0.6, 0.8), weights = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 
            20), curveid = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("F", "M"), class = "factor", 
            names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")), resp = c(0.05, 0.2, 0.45, 0.65, 0.9, 
            1, 0, 0.1, 0.3, 0.5, 0.6, 0.8), names = list(dName = "dose", orName = "numdead/total", wName = "total", cNames = "sex", 
            rName = "")), coefficients = structure(c(-1.53537089405306, 9.60555909567247, 4.69001133575563), names = c("b:(Intercept)", 
            "e:sexF", "e:sexM")), boxcox = NULL, indexMat2 = structure(c(1, 1, 3, 2), .Dim = c(2L, 2L))), class = "drc")
    drc:::logLik.drc(object = Hv.m1)
}




