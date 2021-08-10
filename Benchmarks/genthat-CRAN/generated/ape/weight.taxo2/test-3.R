library(ape)

function_to_run <- function() {
    sel <- TRUE
    i <- 4L
    gr <- structure(list(Genus = structure(c(9L, 9L, 9L, 9L, 38L, 16L, 5L, 72L, 72L, 72L, 22L, 48L, 67L, 18L, 18L, 11L, 12L, 
        61L, 68L, 68L, 66L, 60L, 8L, 54L, 47L, 57L, 4L, 45L, 45L, 45L, 45L, 45L, 45L, 45L, 45L, 45L, 71L, 40L, 40L, 40L, 
        40L, 27L, 64L, 26L, 33L, 53L, 42L, 41L, 65L, 43L, 62L, 36L, 36L, 36L, 37L, 6L, 19L, 69L, 13L, 70L, 25L, 25L, 56L, 
        46L, 3L, 52L, 52L, 49L, 2L, 29L, 23L, 20L, 24L, 30L, 30L, 30L, 30L, 30L, 30L, 30L, 30L, 44L, 15L, 28L, 32L, 7L, 17L, 
        51L, 63L, 31L, 31L, 14L, 58L, 21L, 21L, 21L, 35L, 55L, 55L, 55L, 10L, 59L, 34L, 34L, 39L, 39L, 50L, 50L, 50L, 50L, 
        50L, 1L), .Label = c("Acinonyx", "Acrctictis", "Actogalidia", "Ailuropoda", "Alopex", "Aonyx", "Atilax", "Bassariscus", 
        "Canis", "Caracal", "Cerdocyon", "Chrysocyon", "Civettictis", "Crocuta", "Crossarchus", "Cuon", "Cynictus", "Dusicyon", 
        "Enhydra", "Eupleres", "Felis", "Fennecus", "Fossa", "Galidea", "Genetta", "Grison", "Gulo", "Helogale", "Hemigalus", 
        "Herpetes", "Hyaena", "Ichneumia", "Ictonyx", "Leopardus", "Leptailurus", "Lutra", "Lutrogale", "Lycaon", "Lynx", 
        "Martes", "Meles", "Mellivora", "Mephistis", "Mungos", "Mustela", "Nandinia", "Nasua", "Otocyon", "Paguma", "Panthera", 
        "Paracynictis", "Paradoxurus", "Poecilogale", "Polos", "Prionailurus", "Prionodon", "Procyon", "Proteles", "Puma", 
        "Selenarctos", "Speothos", "Spilogale", "Suricata", "Tavra", "Taxidea", "Thalarctos", "Urocyon", "Ursus", "Viverra", 
        "Viverricula", "Vormela", "Vulpes"), class = "factor"), Family = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 7L, 7L, 7L, 7L, 6L, 6L, 6L, 6L, 1L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 
        5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 
        8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 4L, 4L, 4L, 4L, 3L, 3L, 3L, 
        3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L), .Label = c("Ailuridae", "Canidae", "Felidae", "Hyaenidae", 
        "Mustelidae", "Procyonidae", "Ursidae", "Viverridae"), class = "factor"), SuperFamily = structure(c(1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("Caniformia", "Feliformia"), 
        class = "factor"), Order = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L), .Label = "Carnivora", class = "factor")), row.names = c(NA, -112L), class = "data.frame")
    g <- structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), 
        .Label = "Carnivora", class = "factor")
    ape:::weight.taxo2(x = g, y = gr[sel, i - 1])
}




