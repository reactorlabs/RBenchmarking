library(drc)

function_to_run <- function() {
    drm <- drc::drm
    LN.3 <- drc::LN.3
    P.promelas <- drc::P.promelas
    p.prom.m1 <- structure(list(varParm = NULL, fit = list(par = c(-0.571776862264941, 0.704854872126119, 1145.65428064197), 
        value = 0.0627815026221349, counts = structure(c(119L, 88L), names = c("function", "gradient")), convergence = TRUE, 
        message = NULL, hessian = structure(c(2.04147344144077, -7.5493413109771, -0.000647327144603556, -7.5493413109771, 
            38.1570953431455, 0.00217714427976842, -0.000647327144603556, 0.00217714427976842, 2.48631288552197e-07), .Dim = c(3L, 
            3L)), ovalue = 0.0627815026221349), curve = list(genthat::with_env(function(dose) {
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
        fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4])
    }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e) {
        .expr1 <- d - c
        .expr4 <- log(dose) - log(e)
        .expr5 <- b * .expr4
        .expr6 <- pnorm(.expr5)
        .expr9 <- dnorm(.expr5)
        .value <- c + .expr1 * .expr6
        .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
        tempVec <- .expr9 * .expr4
        tempVec[!is.finite(tempVec)] <- 0
        .grad[, "b"] <- .expr1 * tempVec
        .grad[, "c"] <- 1 - .expr6
        .grad[, "d"] <- .expr6
        .grad[, "e"] <- -(.expr1 * (.expr9 * (b * (1/e))))
        attr(.value, "gradient") <- .grad
        .value
    }, env = list2env(list(pnorm = stats::pnorm, dnorm = stats::dnorm), parent = baseenv())), parmVec = c(0, 0, 0, 0), numParm = 4, 
        notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), parmMat = structure(c(-0.571776862264941, 0.704854872126119, 
        1145.65428064197), .Dim = c(1L, 3L), .Dimnames = list("1", NULL)), numNames = 3L, numAss = 1L, iVec = 1L, complete.cases = stats::complete.cases, 
        ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), NULL), summary = c(NA, NA, NA, 0.0627815026221349, 21, 
        24), start = c(-0.561203750764093, 0.767409, 202.885642190636), parNames = list(c("b:(Intercept)", "d:(Intercept)", 
        "e:(Intercept)"), c("b", "d", "e"), c("(Intercept)", "(Intercept)", "(Intercept)")), predres = structure(c(0.704854872126119, 
        0.704854872126119, 0.704854872126119, 0.704854872126119, 0.690484789882461, 0.690484789882461, 0.690484789882461, 
        0.690484789882461, 0.669947845665535, 0.669947845665535, 0.669947845665535, 0.669947845665535, 0.630793629592108, 
        0.630793629592108, 0.630793629592108, 0.630793629592108, 0.566867468237212, 0.566867468237212, 0.566867468237212, 
        0.566867468237212, 0.477486958900186, 0.477486958900186, 0.477486958900186, 0.477486958900186, 0.00614512787388055, 
        -0.0428548721261194, 0.0131451278738806, 0.0621451278738806, -0.0444847898824613, -0.0644847898824613, 0.0325152101175387, 
        0.00951521011753864, -0.000947845665535296, -0.000947845665535296, 0.0240521543344646, 0.00605215433446471, -0.00179362959210771, 
        0.0492063704078923, -0.117793629592108, 0.0412063704078923, 0.0831325317627879, -0.00886746823721207, 0.0391325317627879, 
        -0.0588674682372121, -0.119486958900186, 0.0655130410998145, 0.0105130410998144, 0.0175130410998144), .Dim = c(24L, 
        2L), .Dimnames = list(NULL, c("Predicted values", "Residuals"))), call = drm(formula = dryweight ~ conc, data = P.promelas, 
        fct = LN.3()), data = structure(list(conc = c(0, 0, 0, 0, 32, 32, 32, 32, 64, 64, 64, 64, 128, 128, 128, 128, 256, 
        256, 256, 256, 512, 512, 512, 512), dryweight = c(0.711, 0.662, 0.718, 0.767, 0.646, 0.626, 0.723, 0.7, 0.669, 0.669, 
        0.694, 0.676, 0.629, 0.68, 0.513, 0.672, 0.65, 0.558, 0.606, 0.508, 0.358, 0.543, 0.488, 0.495), `1` = c(1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), `1` = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), 
        class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", 
            "16", "17", "18", "19", "20", "21", "22", "23", "24")), parmMat = structure(c(-0.571776862264941, 0.704854872126119, 
        1145.65428064197), .Dim = c(3L, 1L), .Dimnames = list(NULL, "1")), fct = structure(list(fct = genthat::with_env(function(dose, 
        parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4])
    }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e) {
        .expr1 <- d - c
        .expr4 <- log(dose) - log(e)
        .expr5 <- b * .expr4
        .expr6 <- pnorm(.expr5)
        .expr9 <- dnorm(.expr5)
        .value <- c + .expr1 * .expr6
        .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
        tempVec <- .expr9 * .expr4
        tempVec[!is.finite(tempVec)] <- 0
        .grad[, "b"] <- .expr1 * tempVec
        .grad[, "c"] <- 1 - .expr6
        .grad[, "d"] <- .expr6
        .grad[, "e"] <- -(.expr1 * (.expr9 * (b * (1/e))))
        attr(.value, "gradient") <- .grad
        .value
    }, env = list2env(list(pnorm = stats::pnorm, dnorm = stats::dnorm), parent = baseenv())), parmVec = c(0, 0, 0, 0), numParm = 4, 
        notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), ssfct = genthat::with_env(function(dframe) {
        x <- dframe[, 1]
        y <- dframe[, 2]
        cdVal <- findcd(x, y)
        if (useFixed) {
        }
        beVal <- findbe(x, y, cdVal[1], cdVal[2])
        if (loge) {
            beVal[2] <- log(beVal[2])
        }
        return(c(beVal[1], cdVal, beVal[2])[is.na(fixed)])
    }, env = list2env(list(findbe = genthat::with_env(function(x, y, cVal, dVal) {
        lmFit <- lm(respTr(y, cVal, dVal) ~ doseTr(x))
        coefVec <- coef(lmFit)
        bVal <- sgnb * coefVec[2]
        eVal <- back(-coefVec[1]/(sgnb * bVal))
        return(as.vector(c(bVal, eVal)))
    }, env = list2env(list(sgnb = -1, lm = stats::lm, coef = stats::coef, back = .Primitive("exp")), parent = baseenv())), 
        useFixed = FALSE, loge = FALSE, fixed = c(NA, 0, NA, NA), findcd = drc:::findcd), parent = baseenv())), names = c("b", 
        "d", "e"), deriv1 = genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        attr(fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4]), "gradient")[, notFixed]
    }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e) {
        .expr1 <- d - c
        .expr4 <- log(dose) - log(e)
        .expr5 <- b * .expr4
        .expr6 <- pnorm(.expr5)
        .expr9 <- dnorm(.expr5)
        .value <- c + .expr1 * .expr6
        .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
        tempVec <- .expr9 * .expr4
        tempVec[!is.finite(tempVec)] <- 0
        .grad[, "b"] <- .expr1 * tempVec
        .grad[, "c"] <- 1 - .expr6
        .grad[, "d"] <- .expr6
        .grad[, "e"] <- -(.expr1 * (.expr9 * (b * (1/e))))
        attr(.value, "gradient") <- .grad
        .value
    }, env = list2env(list(pnorm = stats::pnorm, dnorm = stats::dnorm), parent = baseenv())), parmVec = c(0, 0, 0, 0), numParm = 4, 
        notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), deriv2 = NULL, derivx = genthat::with_env(function(dose, 
        parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        dFct <- function(dose, b, c, d, e) {
            .expr1 <- d - c
            .expr5 <- b * (log(dose) - transfe(e))
            .value <- c + .expr1 * pnorm(.expr5)
            .grad <- array(0, c(length(.value), 1L), list(NULL, c("dose")))
            .grad[, "dose"] <- .expr1 * (dnorm(.expr5) * (b * (1/dose)))
            attr(.value, "gradient") <- .grad
            .value
        }
        attr(dFct(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4]), "gradient")
    }, env = list2env(list(transfe = .Primitive("log"), pnorm = stats::pnorm, parmVec = c(0, 0, 0, 0), numParm = 4, notFixed = c(TRUE, 
        FALSE, TRUE, TRUE), dnorm = stats::dnorm), parent = baseenv())), edfct = genthat::with_env(function(parm, respl, 
        reference, type, ...) {
        parmVec[notFixed] <- parm
        p <- absToRel(parmVec, respl, type)
        if (identical(type, "absolute")) {
            p <- 100 - p
        }
        if (identical(type, "relative") && (parmVec[1] < 0) && (reference == "control")) {
            p <- 100 - p
        }
        pProp <- 1 - (100 - p)/100
        if (!loge) {
            EDfct <- function(b, c, d, e) {
                .expr2 <- exp(qnorm(pProp)/b)
                .value <- e * .expr2
                .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
                .grad[, "b"] <- -(e * (.expr2 * (qnorm(pProp)/(b^2))))
                .grad[, "c"] <- 0
                .grad[, "d"] <- 0
                .grad[, "e"] <- .expr2
                attr(.value, "gradient") <- .grad
                .value
            }
        } else {
            EDfct <- function(b, c, d, e) {
                .value <- e + qnorm(pProp)/b
                .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
                .grad[, "b"] <- -(qnorm(pProp)/(b^2))
                .grad[, "c"] <- 0
                .grad[, "d"] <- 0
                .grad[, "e"] <- 1
                attr(.value, "gradient") <- .grad
                .value
            }
        }
        EDp <- EDfct(parmVec[1], parmVec[2], parmVec[3], parmVec[4])
        EDder <- attr(EDfct(parmVec[1], parmVec[2], parmVec[3], parmVec[4]), "gradient")
        return(list(EDp, EDder[notFixed]))
    }, env = list2env(list(qnorm = stats::qnorm, notFixed = c(TRUE, FALSE, TRUE, TRUE), loge = FALSE, absToRel = drc:::absToRel), 
        parent = baseenv())), name = "LN.3", text = "Log-normal with lower limit at 0", noParm = 3L, lowerAs = genthat::with_env(function(parm) {
        parmVec[indexVec] <- parm
        parmVec[parmNo]
    }, env = list2env(list(parmNo = 2, indexVec = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), upperAs = genthat::with_env(function(parm) {
        parmVec[indexVec] <- parm
        parmVec[parmNo]
    }, env = list2env(list(parmNo = 3, indexVec = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), monoton = genthat::with_env(function(parm) {
        parmVec[indexVec] <- parm
        signVal * parmVec[parmNo]
    }, env = list2env(list(signVal = -1, parmNo = 1, indexVec = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), fixed = c(NA, 
        0, NA, NA)), class = "log-normal"), robust = NULL, estMethod = list(llfct = genthat::with_env(function(object) {
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
    }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
        .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(24L, 
        1L))), parmIndex = list(1, 2, 3), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
        parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4])
    }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e) {
        .expr1 <- d - c
        .expr4 <- log(dose) - log(e)
        .expr5 <- b * .expr4
        .expr6 <- pnorm(.expr5)
        .expr9 <- dnorm(.expr5)
        .value <- c + .expr1 * .expr6
        .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
        tempVec <- .expr9 * .expr4
        tempVec[!is.finite(tempVec)] <- 0
        .grad[, "b"] <- .expr1 * tempVec
        .grad[, "c"] <- 1 - .expr6
        .grad[, "d"] <- .expr6
        .grad[, "e"] <- -(.expr1 * (.expr9 * (b * (1/e))))
        attr(.value, "gradient") <- .grad
        .value
    }, env = list2env(list(pnorm = stats::pnorm, dnorm = stats::dnorm), parent = baseenv())), parmVec = c(0, 0, 0, 0), numParm = 4, 
        notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE)), parent = baseenv()))), parent = baseenv())), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1), rmNA = FALSE, respScaling = 1, resp = structure(c(0.711, 0.662, 0.718, 0.767, 0.646, 0.626, 
        0.723, 0.7, 0.669, 0.669, 0.694, 0.676, 0.629, 0.68, 0.513, 0.672, 0.65, 0.558, 0.606, 0.508, 0.358, 0.543, 0.488, 
        0.495), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", 
        "19", "20", "21", "22", "23", "24")), doseScaling = 1, dose = structure(c(0, 0, 0, 0, 32, 32, 32, 32, 64, 64, 64, 
        64, 128, 128, 128, 128, 256, 256, 256, 256, 512, 512, 512, 512), names = c("1", "2", "3", "4", "5", "6", "7", "8", 
        "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"))), parent = baseenv())), 
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
    }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1), .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), 
        .Dim = c(24L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(24L, 
        1L))), parmIndex = list(1, 2, 3), numNames = 3L), parent = baseenv())), uniqueNames = "1", numAss = 1L, cm = NULL, 
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
            fd(dose, parmMat[, 1], parmMat[, 2], parmMat[, 3], parmMat[, 4])
        }, env = list2env(list(fd = genthat::with_env(function(dose, b, c, d, e) {
            .expr1 <- d - c
            .expr4 <- log(dose) - log(e)
            .expr5 <- b * .expr4
            .expr6 <- pnorm(.expr5)
            .expr9 <- dnorm(.expr5)
            .value <- c + .expr1 * .expr6
            .grad <- array(0, c(length(.value), 4L), list(NULL, c("b", "c", "d", "e")))
            tempVec <- .expr9 * .expr4
            tempVec[!is.finite(tempVec)] <- 0
            .grad[, "b"] <- .expr1 * tempVec
            .grad[, "c"] <- 1 - .expr6
            .grad[, "d"] <- .expr6
            .grad[, "e"] <- -(.expr1 * (.expr9 * (b * (1/e))))
            attr(.value, "gradient") <- .grad
            .value
        }, env = list2env(list(pnorm = stats::pnorm, dnorm = stats::dnorm), parent = baseenv())), parmVec = c(0, 0, 0, 0), 
            numParm = 4, notFixed = c(TRUE, FALSE, TRUE, TRUE)), parent = baseenv())), numNames = 3L, numAss = 1L, iVec = 1L, 
            complete.cases = stats::complete.cases, ciOrigLength = 1L, ciOrigIndex = 1), parent = baseenv())), type = "continuous", 
        indexMat = structure(1:3, .Dim = c(3L, 1L), .Dimnames = list(NULL, "1")), logDose = NULL, cm = NULL, deriv1 = structure(c(0, 
            0, 0, 0, -0.12411105038326, -0.12411105038326, -0.12411105038326, -0.12411105038326, -0.208120660980957, -0.208120660980957, 
            -0.208120660980957, -0.208120660980957, -0.281046873319217, -0.281046873319217, -0.281046873319217, -0.281046873319217, 
            -0.291916522037235, -0.291916522037235, -0.291916522037235, -0.291916522037235, -0.203692043755377, -0.203692043755377, 
            -0.203692043755377, -0.203692043755377, 1, 1, 1, 1, 0.979612707790027, 0.979612707790027, 0.979612707790027, 
            0.979612707790027, 0.950476292580215, 0.950476292580215, 0.950476292580215, 0.950476292580215, 0.89492696232543, 
            0.89492696232543, 0.89492696232543, 0.89492696232543, 0.804232886306534, 0.804232886306534, 0.804232886306534, 
            0.804232886306534, 0.677425918132476, 0.677425918132476, 0.677425918132476, 0.677425918132476, 0, 0, 0, 0, 1.7311858092392e-05, 
            1.7311858092392e-05, 1.7311858092392e-05, 1.7311858092392e-05, 3.60052011743451e-05, 3.60052011743451e-05, 3.60052011743451e-05, 
            3.60052011743451e-05, 6.39985986363207e-05, 6.39985986363207e-05, 6.39985986363207e-05, 6.39985986363207e-05, 
            9.72208360108298e-05, 9.72208360108298e-05, 9.72208360108298e-05, 9.72208360108298e-05, 0.000126221083064168, 
            0.000126221083064168, 0.000126221083064168, 0.000126221083064168), .Dim = c(24L, 3L), .Dimnames = list(NULL, 
            c("b", "d", "e"))), curveVarNam = "1", origData = structure(list(conc = c(0, 0, 0, 0, 32, 32, 32, 32, 64, 64, 
            64, 64, 128, 128, 128, 128, 256, 256, 256, 256, 512, 512, 512, 512), dryweight = c(0.711, 0.662, 0.718, 0.767, 
            0.646, 0.626, 0.723, 0.7, 0.669, 0.669, 0.694, 0.676, 0.629, 0.68, 0.513, 0.672, 0.65, 0.558, 0.606, 0.508, 0.358, 
            0.543, 0.488, 0.495)), row.names = c(NA, -24L), class = "data.frame"), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), dataList = list(dose = structure(c(0, 0, 0, 0, 32, 32, 32, 32, 
            64, 64, 64, 64, 128, 128, 128, 128, 256, 256, 256, 256, 512, 512, 512, 512), names = c("1", "2", "3", "4", "5", 
            "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24")), 
            origResp = c(0.711, 0.662, 0.718, 0.767, 0.646, 0.626, 0.723, 0.7, 0.669, 0.669, 0.694, 0.676, 0.629, 0.68, 0.513, 
                0.672, 0.65, 0.558, 0.606, 0.508, 0.358, 0.543, 0.488, 0.495), weights = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), curveid = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
                1, 1, 1, 1, 1, 1, 1), resp = c(0.711, 0.662, 0.718, 0.767, 0.646, 0.626, 0.723, 0.7, 0.669, 0.669, 0.694, 
                0.676, 0.629, 0.68, 0.513, 0.672, 0.65, 0.558, 0.606, 0.508, 0.358, 0.543, 0.488, 0.495), names = list(dName = "conc", 
                orName = "dryweight", wName = "weights", cNames = "1", rName = "")), coefficients = structure(c(-0.571776862264941, 
            0.704854872126119, 1145.65428064197), names = c("b:(Intercept)", "d:(Intercept)", "e:(Intercept)")), boxcox = NULL, 
        indexMat2 = c(1, 2, 3)), class = "drc")
    drc:::plot.drc(x = p.prom.m1, type = "all", broken = TRUE, xlim = c(0, 1000))
}




