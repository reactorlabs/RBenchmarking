

genthat_extracted_call <- function() {
    casualties <- dynia::casualties
    dynia:::GetPV(delta0 = 1, z = casualties[, 1], T = 70, xint = scale(casualties[, 2]), itype = "s", order = c(1, 0, 0), 
        seasonal = list(order = c(0, 0, 1), period = 12))
}




