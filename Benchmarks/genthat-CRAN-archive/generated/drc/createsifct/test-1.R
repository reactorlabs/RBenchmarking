

genthat_extracted_call <- function() {
    AR.3 <- drc::AR.3
    drm <- drc::drm
    methionine <- drc::methionine
    object <- structure(list(varParm = NULL, fit = list(par = c(1453.5994936927, 1689.24877325063, 1754.10304410582, 0.0453854753796573, 
        0.0926679240239363), value = 502.054048687105, counts = structure(c(66L, 12L), names = c("function", "gradient")), 
        convergence = TRUE, message = NULL, hessian = structure(c(3.61000445380235, 0.808974847173388, 1.41252428801196, 
            -2009.66523126209, -2629.35788280319, 0.808974847173388, 5.99816706632852, 0, -6270.47408992917, 0, 1.41252428801196, 
            0, 3.94883020816784, 1.39052389114337e-07, -5087.49280575545, -2009.66523126209, -6270.47408992917, 1.39052389114337e-07, 
            11680830.4803061, -1.39044137356972e-07, -2629.35788280319, 0, -5087.49280575545, -1.39044137356972e-07, 7714705.11306986), 
            .Dim = c(5L, 5L)), ovalue = 502.054048687105), curve = list(genthat::with_env(function(dose) {
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
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * (1 - exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))))
    }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
        parmMat = structure(c(1453.5994936927, 1453.5994936927, 1689.24877325063, 1754.10304410582, 0.0453854753796573, 0.0926679240239363), 
            .Dim = 2:3, .Dimnames = list(c("DLM", "MHA"), NULL)), numNames = 3L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, 
        ciOrigLength = 3L, ciOrigIndex = c(2, 3)), parent = baseenv())), NULL), summary = c(NA, NA, NA, 502.054048687105, 
        4, 9), start = c(1500.79233333333, 1698.245, 1722.161, 0.0511019557722096, 0.131131304265169), parNames = list(c("c:(Intercept)", 
        "d:DLM", "d:MHA", "e:DLM", "e:MHA"), c("c", "d", "d", "e", "e"), c("(Intercept)", "DLM", "MHA", "DLM", "MHA")), predres = structure(c(1453.5994936927, 
        1591.63629224081, 1656.81074892888, 1680.60082170508, 1687.3991558228, 1558.9447976907, 1640.32498222007, 1694.55541412361, 
        1726.12581138523, -0.599493692700889, 1.36370775919477, 3.18925107111704, -14.6008217050842, 10.6008441771953, 2.05520230930028, 
        -7.32498222007098, 9.44458587639156, -4.12581138523456), .Dim = c(9L, 2L), .Dimnames = list(NULL, c("Predicted values", 
        "Residuals"))), call = drm(formula = gain ~ dose, curveid = product, pmodels = list(~1, ~factor(product), ~factor(product)), 
        data = methionine, fct = AR.3()), data = structure(list(dose = c(0, 0.04, 0.09, 0.15, 0.22, 0.04, 0.09, 0.15, 0.22), 
        gain = c(1453, 1593, 1660, 1666, 1698, 1561, 1633, 1704, 1722), product = c(1, 1, 1, 1, 1, 2, 2, 2, 2), product = structure(c(1L, 
            2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", "MHA"), class = "factor"), weights = c(1, 1, 1, 
            1, 1, 1, 1, 1, 1)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), parmMat = structure(c(1453.5994936927, 
        1689.24877325063, 0.0453854753796573, 1453.5994936927, 1754.10304410582, 0.0926679240239363), .Dim = 3:2, .Dimnames = list(NULL, 
        c("DLM", "MHA"))), fct = structure(list(fct = genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * (1 - exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))))
    }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
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
            useFixed = FALSE, fixed = c(1, NA, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("c", "d", 
            "e"), deriv1 = genthat::with_env(function(dose, parm) {
            parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
            parmMat[, notFixed] <- parm
            t1 <- parmMat[, 3] - parmMat[, 2]
            t2 <- exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))
            t3 <- exp(-t2)
            derMat <- as.matrix(cbind(t1 * xexplogx(dose/parmMat[, 4], parmMat[, 1]), 1 - (1 - t3), 1 - t3, -t1 * xexpx(dose/parmMat[, 
                4], parmMat[, 1]) * parmMat[, 1]/parmMat[, 4]))
            return(derMat[, notFixed])
        }, env = list2env(list(xexpx = drc:::xexpx, xexplogx = drc:::xexplogx, parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, 
            TRUE, TRUE, TRUE)), parent = baseenv())), deriv2 = NULL, derivx = NULL, edfct = genthat::with_env(function(parm, 
            p, reference, type, ...) {
            parmVec[notFixed] <- parm
            p <- absToRel(parmVec, p, type)
            if (identical(type, "absolute") && (parmVec[1] > 0) && (reference == "control")) {
                p <- 100 - p
            }
            weibull1(fixed, names)$edfct(parm, p, reference, "relative", ...)
        }, env = list2env(list(weibull1 = drc::weibull1, notFixed = c(FALSE, TRUE, TRUE, TRUE), names = c("b", "c", "d", 
            "e"), fixed = c(1, NA, NA, NA), absToRel = drc:::absToRel), parent = baseenv())), name = "AR.3", text = "Shifted asymptotic regression", 
        noParm = 3L, fixed = c(1, NA, NA, NA)), class = "Weibull-2"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", 
        "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
        structure(c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", 
            "3", "4", "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
        parmIndex = list(1, c(2, 3), c(4, 5)), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
        parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * (1 - exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))))
    }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
        pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv())), 
        weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, resp = structure(c(1453, 1593, 1660, 1666, 
            1698, 1561, 1633, 1704, 1722), names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), doseScaling = 1, dose = structure(c(0, 
            0.04, 0.09, 0.15, 0.22, 0.04, 0.09, 0.15, 0.22), names = c("1", "2", "3", "4", "5", "7", "8", "9", "10"))), parent = baseenv())), 
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
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", 
        "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment")), 
        structure(c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1), .Dim = c(9L, 2L), .Dimnames = list(c("1", "2", 
            "3", "4", "5", "6", "7", "8", "9"), c("DLM", "MHA")), assign = c(1L, 1L), contrasts = list(`factor(assayNo)` = "contr.treatment"))), 
        parmIndex = list(1, c(2, 3), c(4, 5)), numNames = 3L), parent = baseenv())), uniqueNames = c("control", "DLM", "MHA"), 
        numAss = 2L, cm = NULL, assayNoOld = structure(c(1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", 
            "MHA"), class = "factor", names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), assayNames = c("DLM", "MHA")), 
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
        parmMat[, 2] + (parmMat[, 3] - parmMat[, 2]) * (1 - exp(-exp(parmMat[, 1] * (log(dose) - log(parmMat[, 4])))))
    }, env = list2env(list(parmVec = c(1, 0, 0, 0), numParm = 4, notFixed = c(FALSE, TRUE, TRUE, TRUE)), parent = baseenv())), 
        numNames = 3L, numAss = 2L, iVec = 1:2, complete.cases = stats::complete.cases, ciOrigLength = 3L, ciOrigIndex = c(2, 
            3)), parent = baseenv())), type = "continuous", indexMat = structure(c(1L, 2L, 4L, 1L, 3L, 5L), .Dim = 3:2, .Dimnames = list(NULL, 
        c("DLM", "MHA"))), logDose = NULL, cm = NULL, deriv1 = structure(c(1, 0.414227793070039, 0.137653823438802, 0.0366984001044705, 
        0.00784902644852736, 0.649437406469327, 0.378624684231959, 0.198159488965602, 0.0931011719566196, 0, 0.585772206929961, 
        0.862346176561198, 0.96330159989553, 0.992150973551473, 0.350562593530673, 0.621375315768041, 0.801840511034398, 
        0.90689882804338, -0, -1895.53394108505, -1417.30437293372, -629.753702057068, -197.547169881193, -909.050543066176, 
        -1192.45547858668, -1040.15215282955, -716.751430488981), .Dim = c(9L, 3L), .Dimnames = list(c("1", "2", "3", "4", 
        "5", "7", "8", "9", "10"), NULL)), curveVarNam = "product", origData = structure(list(product = structure(c(1L, 2L, 
        2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", "MHA"), class = "factor"), dose = c(0, 0.04, 0.09, 0.15, 
        0.22, 0.04, 0.09, 0.15, 0.22), gain = c(1453L, 1593L, 1660L, 1666L, 1698L, 1561L, 1633L, 1704L, 1722L)), class = "data.frame", 
        row.names = c(1L, 2L, 3L, 4L, 5L, 7L, 8L, 9L, 10L)), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 
        0.04, 0.09, 0.15, 0.22, 0.04, 0.09, 0.15, 0.22), names = c("1", "2", "3", "4", "5", "7", "8", "9", "10")), origResp = c(1453, 
        1593, 1660, 1666, 1698, 1561, 1633, 1704, 1722), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = structure(c(1L, 
        2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), .Label = c("control", "DLM", "MHA"), class = "factor", names = c("1", "2", "3", 
        "4", "5", "7", "8", "9", "10")), resp = c(1453, 1593, 1660, 1666, 1698, 1561, 1633, 1704, 1722), names = list(dName = "dose", 
        orName = "gain", wName = "weights", cNames = "product", rName = "")), coefficients = structure(c(1453.5994936927, 
        1689.24877325063, 1754.10304410582, 0.0453854753796573, 0.0926679240239363), names = c("c:(Intercept)", "d:DLM", 
        "d:MHA", "e:DLM", "e:MHA")), boxcox = NULL, indexMat2 = structure(c(1, 1, 2, 3, 4, 5), .Dim = 2:3)), class = "drc")
    logBase <- NULL
    interval <- "none"
    indexMat <- structure(c(1L, 2L, 4L, 1L, 3L, 5L), .Dim = 3:2, .Dimnames = list(NULL, c("DLM", "MHA")))
    coef <- stats::coef
    drc:::createsifct(edfct = object$fct$edfct, logBase = logBase, fls = identical(interval, "fls"), indexMat = indexMat, 
        lenCoef = length(coef(object)))
}




