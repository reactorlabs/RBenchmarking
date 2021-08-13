

genthat_extracted_call <- function() {
    yieldcurveTenor <- c(1, 2, 3, 4, 5, 7)
    yieldcurveRate <- c(0.005, 0.007, 0.008, 0.01, 0.012, 0.015)
    RR <- 0.4
    premiumFrequency <- 4
    defaultFrequency <- 12
    cdsTenors <- c(1, 3, 5, 7)
    cdsSpreads <- c(0.005, 0.007, 0.009, 0.011)
    accruedPremium <- TRUE
    credule:::bootstrapCDS(yieldcurveTenor = yieldcurveTenor, yieldcurveRate = yieldcurveRate, cdsTenors = cdsTenors, cdsSpreads = cdsSpreads, 
        recoveryRate = RR, numberPremiumPerYear = premiumFrequency, numberDefaultIntervalPerYear = defaultFrequency, accruedPremium = accruedPremium)
}




