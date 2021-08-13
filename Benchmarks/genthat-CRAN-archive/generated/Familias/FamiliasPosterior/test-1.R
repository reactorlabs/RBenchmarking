

genthat_extracted_call <- function() {
    mypedigrees <- list(isFather = structure(list(id = c("mother", "daughter", "AF"), findex = c(0L, 3L, 0L), mindex = c(0L, 
        1L, 0L), sex = c("female", "female", "male")), class = "FamiliasPedigree"), unrelated = structure(list(id = c("mother", 
        "daughter", "AF", "TF"), findex = c(0L, 4L, 0L, 0L), mindex = c(0L, 1L, 0L, 0L), sex = c("female", "female", "male", 
        "male")), class = "FamiliasPedigree"), isUncle = structure(list(id = c("mother", "daughter", "AF", "TF", "gf", "gm"), 
        findex = c(0L, 4L, 5L, 5L, 0L, 0L), mindex = c(0L, 1L, 6L, 6L, 0L, 0L), sex = c("female", "female", "male", "male", 
            "male", "female")), class = "FamiliasPedigree"))
    myloci <- list(structure(list(locusname = "locus1", alleles = structure(c(0.1, 0.2, 0.3, 0.4), names = c("A", "B", "C", 
        "D")), femaleMutationType = "No mutations", femaleMutationMatrix = structure(c(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
        0, 0, 0, 1), .Dim = c(4L, 4L), .Dimnames = list(c("A", "B", "C", "D"), c("A", "B", "C", "D"))), maleMutationType = "No mutations", 
        maleMutationMatrix = structure(c(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1), .Dim = c(4L, 4L), .Dimnames = list(c("A", 
            "B", "C", "D"), c("A", "B", "C", "D"))), simpleMutationMatrices = TRUE, Stabilization = "NONE"), class = "FamiliasLocus"), 
        structure(list(locusname = "loc2", alleles = structure(c(0.2, 0.3, 0.5), names = c("17", "18", "19")), femaleMutationType = "A 'Stepwise' mutation model with mutation rate 0.05 and mutation range 0.5", 
            femaleMutationMatrix = structure(c(0.95, 0.025, 0.0166666666666667, 0.0333333333333333, 0.95, 0.0333333333333333, 
                0.0166666666666667, 0.025, 0.95), .Dim = c(3L, 3L), .Dimnames = list(c("17", "18", "19"), c("17", "18", "19"))), 
            maleMutationType = "No mutations", maleMutationMatrix = structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 
                3L), .Dimnames = list(c("17", "18", "19"), c("17", "18", "19"))), simpleMutationMatrices = FALSE, Stabilization = "NONE"), 
            class = "FamiliasLocus"))
    datamatrix <- structure(list(locus1.1 = structure(c(1L, 1L, 1L), .Label = "A", class = "factor"), locus1.2 = structure(c(1L, 
        1L, 2L), .Label = c("B", "C"), class = "factor"), locus2.1 = c(17, 19, 19), locus2.2 = c(18, 18, 18)), class = "data.frame", 
        row.names = c("mother", "daughter", "AF"))
    Familias:::FamiliasPosterior(pedigrees = mypedigrees, loci = myloci, datamatrix = datamatrix)
}




