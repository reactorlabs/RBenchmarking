

genthat_extracted_call <- function() {
    x <- structure(list(nItem = 5L, nPerson = 10L, alpha = 0.815789473684211, scaleMean = 2.5, scaleSD = 1.77951304200522, 
        itemReport = structure(list(itemName = c("I1", "I2", "I3", "I4", "I5"), itemMean = c(0.2, 0.3, 0.5, 0.7, 0.8), pBis = c(0.403603676397787, 
            0.529957733430267, 0.790569415042095, 0.723746864455746, 0.599543773479809), bis = c(0.57665510482265, 0.6984823172499, 
            0.990831824401503, 0.953895669594783, 0.856607602357462), alphaIfDeleted = c(0.832579185520362, 0.802721088435374, 
            0.716666666666667, 0.742424242424242, 0.782752902155887)), class = "data.frame", row.names = c(NA, -5L))), class = "itemAnalysis")
    CTT:::print.itemAnalysis(x = x)
}




