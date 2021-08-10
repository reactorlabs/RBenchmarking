library(credule)

function_to_run <- function() {
    yieldcurveTenor <- c(1, 2, 3, 4, 5, 7)
    yieldcurveRate <- c(0.005, 0.007, 0.008, 0.01, 0.012, 0.015)
    RR <- 0.4
    premiumFrequency <- 4
    defaultFrequency <- 12
    creditcurveTenor <- c(1, 3, 5, 7)
    creditcurveSP <- c(0.99, 0.98, 0.95, 0.92)
    cdsTenors <- c(1, 3, 5, 7)
    accruedPremium <- TRUE
    credule:::priceCDS(yieldcurveTenor = yieldcurveTenor, yieldcurveRate = yieldcurveRate, creditcurveTenor = creditcurveTenor, 
        creditcurveSP = creditcurveSP, cdsTenors = cdsTenors, recoveryRate = RR, numberPremiumPerYear = premiumFrequency, 
        numberDefaultIntervalPerYear = defaultFrequency, accruedPremium = accruedPremium)
}




