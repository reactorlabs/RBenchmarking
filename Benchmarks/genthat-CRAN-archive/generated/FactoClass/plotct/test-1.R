

genthat_extracted_call <- function() {
    mycolors <- c("white", "blue", "brown", "burlywood", "chocolate", "coral", "cyan", "darkblue", "darkcyan", "darkgreen", 
        "darkgrey", "darkmagenta", "darkolivegreen3", "darkred")
    Bogota <- structure(list(NoSTR = c(327L, 113L, 91L, 150L, 244L, 50L, 219L, 471L, 357L, 334L, 453L, 98L, 148L, 79L, 61L, 
        319L, 42L, 182L, 350L), STR1 = c(109L, 97L, 40L, 225L, 1593L, 17L, 263L, 86L, 0L, 67L, 27L, 1L, 0L, 0L, 0L, 1L, 0L, 
        239L, 2946L), STR2 = c(383L, 121L, 439L, 1969L, 1029L, 535L, 2306L, 2077L, 296L, 857L, 1982L, 1L, 2L, 32L, 25L, 10L, 
        73L, 1087L, 1058L), STR3 = c(487L, 57L, 145L, 288L, 0L, 221L, 78L, 1830L, 715L, 2335L, 955L, 675L, 156L, 584L, 459L, 
        1836L, 39L, 835L, 91L), STR4 = c(303L, 197L, 25L, 0L, 0L, 0L, 0L, 25L, 215L, 122L, 373L, 387L, 625L, 4L, 0L, 0L, 
        0L, 0L, 0L), STR5 = c(308L, 125L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 482L, 15L, 38L, 0L, 0L, 0L, 0L, 0L, 0L), STR6 = c(367L, 
        306L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 112L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L)), class = "data.frame", row.names = c("Usaquen", 
        "Chapinero", "Santafe", "SanCristobal", "Usme", "Tunjuelito", "Bosa", "Kennedy", "Fontibon", "Engativa", "Suba", 
        "BarrUnidos", "Teusaquillo", "LosMartires", "AntonioNari", "PteAranda", "LaCandelaria", "RafaelUribe", "CiuBolivar"))
    FactoClass:::plotct(x = Bogota[, 2:7], col = mycolors)
}




