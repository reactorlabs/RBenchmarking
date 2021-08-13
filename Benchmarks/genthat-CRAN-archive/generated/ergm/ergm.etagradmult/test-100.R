

genthat_extracted_call <- function() {
    theta.offset <- c(-5.51524663035104, 0.0871381914517668, 1.83643051672485)
    llg.offset <- c(-6.95838653872696, 1.39187653624472, -6.81454544747276)
    etamap <- list(canonical = 1:3, offsetmap = c(FALSE, FALSE, FALSE), offset = c(FALSE, FALSE, FALSE), offsettheta = c(FALSE, 
        FALSE, FALSE), curved = list(), etalength = 3)
    ergm:::ergm.etagradmult(theta = theta.offset, v = llg.offset, etamap = etamap)
}




