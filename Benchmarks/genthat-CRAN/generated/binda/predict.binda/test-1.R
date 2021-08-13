

genthat_extracted_call <- function() {
    Xtest <- structure(c(1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1), .Dim = c(2L, 6L), .Dimnames = list(NULL, c("V1", "V2", "V3", 
        "V4", "V5", "V6")))
    binda.fit <- structure(list(regularization = structure(1, names = "lambda.freqs"), logfreqs = structure(c(-0.693147180559945, 
        -0.693147180559945), names = c("Control", "Treatment")), logp0 = structure(c(-21.4164131568106, -5.00000041495186e-10, 
        -5.00000041495186e-10, -5.00000041495186e-10, -21.4164131568106, -21.4164131568106, -21.4164131568106, -21.4164131568106, 
        -0.693147180559945, -21.4164131568106, -5.00000041495186e-10, -5.00000041495186e-10), .Dim = c(6L, 2L), .Dimnames = list(c("V1", 
        "V2", "V3", "V4", "V5", "V6"), c("Control", "Treatment"))), logp1 = structure(c(-4.99999930472883e-10, -21.4164130185064, 
        -21.4164130185064, -21.4164130185064, -4.99999930472883e-10, -4.99999930472883e-10, -4.99999930472883e-10, -4.99999930472883e-10, 
        -0.693147180559945, -4.99999930472883e-10, -21.4164130185064, -21.4164130185064), .Dim = c(6L, 2L), .Dimnames = list(c("V1", 
        "V2", "V3", "V4", "V5", "V6"), c("Control", "Treatment")))), class = "binda")
    binda:::predict.binda(object = binda.fit, Xtest = Xtest)
}




