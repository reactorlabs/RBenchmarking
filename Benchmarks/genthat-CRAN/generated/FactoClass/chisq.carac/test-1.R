library(FactoClass)

function_to_run <- function() {
    DogBreeds <- structure(list(SIZE = structure(c(3L, 1L, 2L, 3L, 1L, 3L, 3L, 2L, 1L, 2L, 1L, 1L, 1L, 3L, 1L, 1L, 2L, 1L, 
        1L, 3L, 2L, 1L, 1L, 1L, 1L, 3L, 1L), .Label = c("lar", "med", "sma"), class = "factor"), WEIG = structure(c(2L, 3L, 
        3L, 2L, 1L, 2L, 2L, 2L, 3L, 3L, 3L, 1L, 3L, 2L, 3L, 3L, 3L, 3L, 1L, 2L, 3L, 3L, 3L, 3L, 1L, 2L, 1L), .Label = c("hea", 
        "lig", "med"), class = "factor"), SPEE = structure(c(2L, 1L, 3L, 2L, 2L, 3L, 2L, 2L, 1L, 3L, 1L, 1L, 1L, 3L, 1L, 
        3L, 3L, 1L, 2L, 2L, 3L, 3L, 1L, 1L, 2L, 2L, 2L), .Label = c("hig", "low", "med"), class = "factor"), INTE = structure(c(2L, 
        3L, 3L, 3L, 1L, 1L, 2L, 3L, 3L, 3L, 1L, 2L, 2L, 3L, 2L, 2L, 3L, 1L, 2L, 2L, 1L, 3L, 1L, 3L, 3L, 3L, 3L), .Label = c("hig", 
        "low", "med"), class = "factor"), AFFE = structure(c(2L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 
        2L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 2L), .Label = c("hig", "low"), class = "factor"), AGGR = structure(c(1L, 
        1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L), .Label = c("hig", 
        "low"), class = "factor"), FUNC = structure(c(2L, 3L, 1L, 1L, 3L, 1L, 1L, 1L, 1L, 1L, 3L, 3L, 2L, 1L, 2L, 2L, 2L, 
        3L, 3L, 1L, 2L, 2L, 2L, 2L, 3L, 1L, 3L), .Label = c("com", "hun", "uti"), class = "factor")), class = "data.frame", 
        row.names = c("bass", "beau", "boxe", "buld", "bulm", "cani", "chih", "cock", "coll", "dalm", "dobe", "dogo", "foxh", 
            "foxt", "galg", "gasc", "labr", "masa", "mast", "peki", "podb", "podf", "poin", "sett", "stbe", "teck", "tern"))
    FactoClass:::chisq.carac(df = DogBreeds[, -7], cl = DogBreeds[, 7], decr = FALSE)
}




