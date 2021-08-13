

genthat_extracted_call <- function() {
    Stabilization <- "PM"
    MaxStabilizedMutrate <- 1
    frequencies <- structure(c(0.2, 0.5, 0.3), names = c("1", "2", "3"))
    femaleMutationMatrix <- structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 3L), .Dimnames = list(c("1", "2", "3"), 
        c("1", "2", "3")))
    Familias:::stabilize(M = femaleMutationMatrix, pe = frequencies, stabilizationMethod = Stabilization, t = MaxStabilizedMutrate)
}




