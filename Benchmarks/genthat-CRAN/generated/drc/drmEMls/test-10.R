library(drc)

function_to_run <- function() {
    robustFct <- genthat::with_env(function(x) {
        x * x
    }, env = list2env(list(), parent = baseenv()))
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
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(36L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(36L, 1L)), structure(c(1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(36L, 
        1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1), .Dim = c(36L, 1L))), parmIndex = list(1, 2, 3, 4), numNames = 4L), parent = baseenv())), drcFct = genthat::with_env(function(dose, 
        parm) {
        parmMat <- matrix(parmVec/c(1, respScaling, respScaling, doseScaling, 1), nrow(parm), numParm, byrow = TRUE)
        parmMat[, notFixed] <- parm
        cParm <- parmMat[, 2]
        cParm + (parmMat[, 3] - cParm)/((1 + exp(parmMat[, 1] * (log(dose/parmMat[, 4]))))^parmMat[, 5])
    }, env = list2env(list(respScaling = 0.1, parmVec = c(0, 0, 0, 0, 1), numParm = 5, notFixed = c(TRUE, TRUE, TRUE, TRUE, 
        FALSE), doseScaling = 100), parent = baseenv())), pshifts = NULL, isFinite = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)), parent = baseenv()))), parent = baseenv()))
    wVec <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
    startVecSc <- c(1.42637870675921, 0.14041506315, 3.20298482685, 3.19426377996462)
    rmNA <- FALSE
    respScaling <- 0.1
    resp <- structure(c(0.290467984, 0.283475624, 0.29253338, 0.314109909, 0.30953829, 0.319992837, 0.265553029, 0.318376138, 
        0.298720086, 0.276370347, 0.276255277, 0.270715249, 0.298005508, 0.297947914, 0.282882775, 0.291885573, 0.284005748, 
        0.276349646, 0.291809317, 0.277442329, 0.273606045, 0.194129594, 0.153751375, 0.172239563, 0.084272996, 0.084304599, 
        0.093925348, 0.051524061, 0.030212237, 0.069233027, 0.044029152, 0.041268609, 0.036995349, 0.034293853, 0.020447511, 
        0.014347152), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "157", "158", "159", "160", 
        "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", 
        "178", "179", "180"))
    doseScaling <- 100
    dose <- structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39.0625, 39.0625, 39.0625, 78.125, 78.125, 78.125, 156.25, 156.25, 
        156.25, 312.5, 312.5, 312.5, 625, 625, 625, 1250, 1250, 1250, 2500, 2500, 2500, 5000, 5000, 5000), names = c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "157", "158", "159", "160", "161", "162", "163", "164", 
        "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180"))
    dmatfct <- NULL
    drc:::drmEMls(dose = dose, resp = resp, multCurves = multCurves2, startVec = startVecSc, robustFct = robustFct, weights = wVec, 
        rmNA = rmNA, dmf = dmatfct, doseScaling = doseScaling, respScaling = respScaling)
}




