

genthat_extracted_call <- function() {
    ped3 <- structure(list(id = c("mother", "daughter", "AF", "TF", "gf", "gm"), findex = c(0L, 4L, 5L, 5L, 0L, 0L), mindex = c(0L, 
        1L, 6L, 6L, 0L, 0L), sex = c("female", "female", "male", "male", "male", "female")), class = "FamiliasPedigree")
    Familias:::plot.FamiliasPedigree(x = ped3)
}




