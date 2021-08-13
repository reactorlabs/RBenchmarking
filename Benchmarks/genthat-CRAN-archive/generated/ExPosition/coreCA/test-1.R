

genthat_extracted_call <- function() {
    weights <- NULL
    symmetric <- TRUE
    masses <- NULL
    k <- 0
    hellinger <- FALSE
    DATA <- structure(c(7836L, 53655L, 115615L, 161926L, 38177L, 46371L, 13112L, 102383L, 184541L, 340479L, 105101L, 58367L, 
        6026L, 42413L, 59226L, 62754L, 12670L, 14299L), .Dim = c(6L, 3L), .Dimnames = list(c("Rousseau", "Chateaubriand", 
        "Hugo", "Zola", "Proust", "Giraudoux"), c("PERIOD", "COMMA", "OTHER")))
    ExPosition:::coreCA(DATA = DATA, masses = masses, weights = weights, hellinger = hellinger, symmetric = symmetric, k = k)
}




