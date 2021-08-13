library(ExPosition)

function_to_run <- function() {
    X_dimensions <- c(6L, 3L)
    X <- structure(c(7836L, 53655L, 115615L, 161926L, 38177L, 46371L, 13112L, 102383L, 184541L, 340479L, 105101L, 58367L, 
        6026L, 42413L, 59226L, 62754L, 12670L, 14299L), .Dim = c(6L, 3L), .Dimnames = list(c("Rousseau", "Chateaubriand", 
        "Hugo", "Zola", "Proust", "Giraudoux"), c("PERIOD", "COMMA", "OTHER")))
    weights <- NULL
    rowTotal <- structure(c(26974, 198451, 359382, 565159, 155948, 119037), names = c("Rousseau", "Chateaubriand", "Hugo", 
        "Zola", "Proust", "Giraudoux"))
    masses <- NULL
    grandTotal <- 1424951L
    colTotal <- structure(c(423580, 803983, 197388), names = c("PERIOD", "COMMA", "OTHER"))
    ExPosition:::caNorm(X = X, X_dimensions = X_dimensions, colTotal = colTotal, rowTotal = rowTotal, grandTotal = grandTotal, 
        weights = weights, masses = masses)
}




