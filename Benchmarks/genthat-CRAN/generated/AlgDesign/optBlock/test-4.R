

genthat_extracted_call <- function() {
    within <- structure(list(A = c(-1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 
        1), B = c(-1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1), C = c(-1, -1, 
        -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)), out.attrs = list(dim = structure(c(3L, 
        3L, 3L), names = c("A", "B", "C")), dimnames = list(A = c("A=-1", "A= 0", "A= 1"), B = c("B=-1", "B= 0", "B= 1"), 
        C = c("C=-1", "C= 0", "C= 1"))), class = "data.frame", row.names = c(NA, -27L))
    whole <- structure(list(D = structure(c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), .Label = c("1", "2", "3"), class = "factor"), 
        E = structure(c(1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L), .Label = c("1", "2", "3"), class = "factor")), out.attrs = list(dim = structure(c(3L, 
        3L), names = c("D", "E")), dimnames = list(D = c("D=1", "D=2", "D=3"), E = c("E=1", "E=2", "E=3"))), class = "data.frame", 
        row.names = c(NA, -9L))
    AlgDesign:::optBlock(frml = ~D + E * (quad(A, B, C)), withinData = within, blocksizes = rep(6, 9), wholeBlockData = whole)
}




