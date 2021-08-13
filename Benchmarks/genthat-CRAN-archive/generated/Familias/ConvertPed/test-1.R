

genthat_extracted_call <- function() {
    persons <- c("AF", "mother", "daughter")
    ped1 <- structure(list(ID = c(1, 2, 3), FID = c(0, 0, 1), MID = c(0, 0, 2), SEX = c(1, 2, 2), AFF = c(1, 1, 1), V1 = c("1", 
        "2", "1"), V2 = c("1", "2", "2")), class = "data.frame", row.names = c(NA, -3L))
    Familias:::ConvertPed(ped = ped1, persons = persons)
}




