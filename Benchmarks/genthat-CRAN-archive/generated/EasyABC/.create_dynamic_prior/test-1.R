

genthat_extracted_call <- function() {
    args <- c("0", "1")
    EasyABC:::.create_dynamic_prior(sampleName = "runif", sampleArgs = c(1, args), densityName = "dunif", densityArgs = args, 
        isUniform = TRUE)
}




