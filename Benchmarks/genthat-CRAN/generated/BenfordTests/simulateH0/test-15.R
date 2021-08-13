

genthat_extracted_call <- function() {
    pvalsims <- 10000
    n <- 20L
    digits <- 1
    BenfordTests:::simulateH0(teststatistic = "usq", n = n, digits = digits, pvalsims = pvalsims)
}




