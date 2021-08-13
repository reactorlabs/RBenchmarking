library(drc)

function_to_run <- function() {
    multCurves2 <- genthat::with_env(function(dose, parm) {
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
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(35L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(35L, 1L)), structure(c(1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(35L, 1L))), parmIndex = list(1, 
        2, 3), numNames = 3L), parent = baseenv())), drcFct = genthat::with_env(function(dose, parm) {
        parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        cParm <- parmMat[, 2]
        cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
    }, env = list2env(list(respScaling = 1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, FALSE, TRUE, TRUE, 
        FALSE), doseScaling = 100), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv()))
    resp <- structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 10, 11, 6, 5, 2, 0, 0, 0, 0, 0, 
        1, 0, 160), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", 
        "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"))
    doseScaling <- 100
    dose <- structure(c(0, 12, 22, 30, 36, 46, 54, 60, 71, 78, 84, 95, 103, 109, 120, 129, 133, 143, 151, 158.5, 169.5, 176.5, 
        182.5, 192.5, 200.5, 206.5, 216.5, 224.5, 230.5, 241.5, 249.5, 254.5, 266.5, 276.5, 281.5, 12, 22, 30, 36, 46, 54, 
        60, 71, 78, 84, 95, 103, 109, 120, 129, 133, 143, 151, 158.5, 169.5, 176.5, 182.5, 192.5, 200.5, 206.5, 216.5, 224.5, 
        230.5, 241.5, 249.5, 254.5, 266.5, 276.5, 281.5, Inf), .Dim = c(35L, 2L), .Dimnames = list(c("1", "2", "3", "4", 
        "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", 
        "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"), c("start", "end")))
    drc:::drmEMeventtime(dose = dose, resp = resp, multCurves = multCurves2, doseScaling = doseScaling)
}




