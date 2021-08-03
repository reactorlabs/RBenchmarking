library(prodlim)

function_to_run <- function() {
    time <- c(3.10270014980633, 3.77183943556559, 2.63274572884138, 2.77965391287061, 2.6663083270488, 1.9521525816458, 1.64977994311879,
        1.30894139811451)
    status <- c(1, 1, 0, 0, 1, 0, 1, 1)
    prodlim:::Hist(time = time, event = status)
}




