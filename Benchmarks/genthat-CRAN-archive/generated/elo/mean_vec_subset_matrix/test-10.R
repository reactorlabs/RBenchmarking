

genthat_extracted_call <- function() {
    vec <- structure(c(0.75, 0.285714285714286, 0.571428571428571, 0.178571428571429, 0.535714285714286, 0.642857142857143, 
        0.571428571428571, 0.464285714285714), names = c("Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", 
        "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"))
    dat <- structure(list(winsA = c(0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0.5, 1, 0.5, 1, 1, 1, 0, 1, 1, 
        1, 1, 1, 0, 1, 1, 1, 0.5, 0, 0, 1, 1, 1, 1, 1, 0.5, 0, 0, 1, 0.5, 1, 1, 0, 1, 1, 0, 0, 0, 1), weights = c(1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), teamA = structure(c(1L, 3L, 5L, 7L, 2L, 3L, 6L, 7L, 3L, 2L, 7L, 6L, 
        4L, 5L, 6L, 7L, 5L, 4L, 7L, 6L, 6L, 7L, 4L, 5L, 7L, 6L, 5L, 4L, 0L, 2L, 4L, 6L, 0L, 1L, 4L, 5L, 1L, 0L, 5L, 4L, 0L, 
        1L, 2L, 3L, 1L, 0L, 3L, 2L, 2L, 3L, 0L, 1L, 3L, 2L, 1L, 0L), .Dim = c(56L, 1L)), teamB = structure(c(0L, 2L, 4L, 
        6L, 0L, 1L, 4L, 5L, 0L, 1L, 4L, 5L, 0L, 1L, 2L, 3L, 0L, 1L, 2L, 3L, 0L, 1L, 2L, 3L, 0L, 1L, 2L, 3L, 1L, 3L, 5L, 7L, 
        2L, 3L, 6L, 7L, 2L, 3L, 6L, 7L, 4L, 5L, 6L, 7L, 4L, 5L, 6L, 7L, 4L, 5L, 6L, 7L, 4L, 5L, 6L, 7L), .Dim = c(56L, 1L)), 
        weightsA = 1, weightsB = 1, nTeams = 8L), teams = c("Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"))
    elo:::mean_vec_subset_matrix(vec = vec, mat = dat$teamB + 1)
}




