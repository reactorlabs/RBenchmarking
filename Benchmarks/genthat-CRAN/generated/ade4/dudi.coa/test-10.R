

genthat_extracted_call <- function() {
    bordeaux <- structure(list(excellent = c(45, 87, 0, 36, 0), good = c(126, 93, 0, 68, 30), mediocre = c(24, 19, 52, 74, 
        111), boring = c(5, 1, 148, 22, 59)), class = "data.frame", row.names = c("Cru_Bourgeois", "Grand_Cru_classe", "Vin_de_table", 
        "Bordeaux_d_origine", "Vin_de_marque"))
    ade4:::dudi.coa(df = bordeaux, scannf = FALSE)
}




