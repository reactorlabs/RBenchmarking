

genthat_extracted_call <- function() {
    tra <- structure(c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE), .Dim = c(3L, 3L))
    dat <- structure(list(tdisease = c(3, 4, 3, 6, 8, 9), tdeath = c(6, 9, 8, 6, 8, 9), stat.disease = c(1, 1, 1, 0, 0, 0), 
        stat.death = c(1, 1, 1, 1, 1, 0), cova = c(1L, 1L, 0L, 1L, 1L, 1L)), class = "data.frame", row.names = c(NA, -6L))
    etm:::etmprep(time = c(NA, "tdisease", "tdeath"), status = c(NA, "stat.disease", "stat.death"), data = dat, tra = tra, 
        cens.name = "cens")
}




