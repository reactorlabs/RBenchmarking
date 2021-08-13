

genthat_extracted_call <- function() {
    x <- structure(list(nItem = 5L, nPerson = 10L, alpha = 0.815789473684211, scaleMean = 2.5, scaleSD = 1.77951304200522, 
        alphaIfDeleted = structure(c(0.832579185520362, 0.802721088435374, 0.716666666666667, 0.742424242424242, 0.782752902155887), 
            .Dim = 5L), pBis = structure(c(0.403603676397787, 0.529957733430267, 0.790569415042095, 0.723746864455746, 0.599543773479809), 
            .Dim = 5L), bis = structure(c(0.695238385512513, 0.771550559883895, 0.992166648016351, 0.99100300526432, 0.993154680156014), 
            .Dim = 5L), itemMean = structure(c(0.2, 0.3, 0.5, 0.7, 0.8), names = c("I1", "I2", "I3", "I4", "I5"))), class = "reliability")
    CTT:::print.reliability(x = x)
}




