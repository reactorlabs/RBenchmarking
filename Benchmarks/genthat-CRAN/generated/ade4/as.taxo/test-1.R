

genthat_extracted_call <- function() {
    taxo.eg <- list(structure(list(genre = structure(c(2L, 1L, 1L, 1L, 1L, 8L, 8L, 3L, 7L, 6L, 5L, 4L, 1L, 1L, 1L), .Label = c("g1", 
        "g2", "g3", "g4", "g5", "g6", "g7", "g8"), class = "factor"), famille = structure(c(2L, 1L, 1L, 1L, 1L, 5L, 5L, 2L, 
        4L, 4L, 3L, 3L, 1L, 1L, 1L), .Label = c("fam1", "fam2", "fam3", "fam4", "fam5"), class = "factor"), ordre = structure(c(2L, 
        1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L), .Label = c("ORD1", "ORD2"), class = "factor")), class = "data.frame", 
        row.names = c("esp8", "esp3", "esp1", "esp2", "esp4", "esp14", "esp15", "esp9", "esp13", "esp12", "esp11", "esp10", 
            "esp5", "esp6", "esp7")), structure(list(gen = structure(c(4L, 10L, 14L, 5L, 25L, 25L, 7L, 2L, 1L, 13L, 8L, 16L, 
        28L, 23L, 23L, 20L, 20L, 15L, 29L, 12L, 27L, 27L, 21L, 21L, 18L, 18L, 9L, 9L, 19L, 19L, 11L, 3L, 3L, 3L, 24L, 26L, 
        17L, 22L, 6L, 6L), .Label = c("Alauda", "Apus", "Carduelis", "Circus", "Columbia", "Corvus", "Cuculus", "Delichon", 
        "Emberiza", "Falco", "Fringilla", "Hippolais", "Hirundo", "Larus", "Luscinia", "Motacilla", "Oriolus", "Parus", "Passer", 
        "Phoenicurus", "Phylloscopus", "Pica", "Saxicola", "Serinus", "Streptopelia", "Sturnus", "Sylvia", "Troglodytes", 
        "Turdus"), class = "factor"), fam = structure(c(1L, 8L, 11L, 4L, 4L, 4L, 6L, 3L, 2L, 10L, 10L, 12L, 18L, 19L, 19L, 
        19L, 19L, 19L, 19L, 17L, 17L, 17L, 17L, 17L, 14L, 14L, 7L, 7L, 15L, 15L, 9L, 9L, 9L, 9L, 9L, 16L, 13L, 5L, 5L, 5L), 
        .Label = c("Accipitidae", "Alaudidae", "Apodidae", "Columbidae", "Corvidae", "Cuculidae", "Emberizidae", "Falconidae", 
            "Fringillidae", "Hirundinidae", "Laridae", "Motacillidae", "Oriolidae", "Paridae", "Passeridae", "Sturnidae", 
            "Sylviidae", "Troglodytidae", "Turdidae"), class = "factor")), class = "data.frame", row.names = c("Circus_pygargus", 
        "Falco_tinnunculus", "Larus_ridibundus", "Columbia_livia", "Streptopelia_turtur", "Streptopelia_decaocto", "Cuculus_canorus", 
        "Apus_apus", "Alauda_arvensis", "Hirundo_rustica", "Delichon_urbica", "Motacilla_flava", "Troglodytes_troglodytes", 
        "Saxicola_rubetra", "Saxicola_torquata", "Phoenicurus_ochruros", "Phoenicurus_phoenicurus", "Luscinia_megarhynchos", 
        "Turdus_merula", "Hippolais_polyglotta", "Sylvia_borin", "Sylvia_atricapilla", "Phylloscopus_trochilus", "Phylloscopus_collybita", 
        "Parus_caeruleus", "Parus_major", "Emberiza_calandra", "Emberiza_cirlus", "Passer_domesticus", "Passer_montanus", 
        "Fringilla_coelebs", "Carduelis_chloris", "Carduelis_carduelis", "Carduelis_cannabina", "Serinus_serinus", "Sturnus_vulgaris", 
        "Oriolus_oriolus", "Pica_pica", "Corvus_monedula", "Corvus_corone")))
    ade4:::as.taxo(df = taxo.eg[[1]][sample(15), ])
}




