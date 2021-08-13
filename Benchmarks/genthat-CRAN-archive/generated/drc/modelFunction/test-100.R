

genthat_extracted_call <- function() {
    parm2mat <- genthat::with_env(function(parm) {
        for (i in 1:numNames) {
            parmMatrix[, i] <- pmodelsList2[[i]] %*% parm[parmIndex[[i]]]
        }
        return(parmMatrix)
    }, env = list2env(list(pmodelsList2 = list(structure(c(1, 1, 1, 1, 1, 1), .Dim = c(6L, 1L)), structure(c(1, 1, 1, 1, 
        1, 1), .Dim = c(6L, 1L))), parmIndex = list(1, 2), numNames = 2L), parent = baseenv()))
    drcFct <- genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec, nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        cParm <- parmMat[, 2]
        cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
    }, env = list2env(list(parmVec = c(0, 0, 1, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, FALSE, TRUE, FALSE)), parent = baseenv()))
    respScaling <- 1
    pshifts <- NULL
    lenData <- 6L
    fct <- structure(list(fct = genthat::with_env(function(dose, parm) {
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
        fixed = c(NA, 0, 1, NA, 1)), class = "llogistic")
    doseScaling <- 10
    dose <- structure(c(5.12861383991365, 10, 20.4173794466953, 30.1995172040202, 40.7380277804113, 50.1187233627272), names = c("1", 
        "2", "3", "4", "5", "6"))
    cm <- NULL
    assayNoOld <- c(1, 1, 1, 1, 1, 1)
    drc:::modelFunction(dose = dose, parm2mat = parm2mat, drcFct = drcFct, cm = cm, assayNoOld = assayNoOld, upperPos = upperPos, 
        retFct = fct$retFct, doseScaling = doseScaling, respScaling = respScaling, isFinite = rep(TRUE, lenData), pshifts = pshifts)
}




