

genthat_extracted_call <- function() {
    Y <- structure(list(Tractions = c(5L, 2L, 12L, 12L, 13L, 4L, 8L, 6L, 15L, 17L, 17L, 13L, 14L, 1L, 6L, 12L, 4L, 11L, 15L, 
        2L), Flexions = c(162L, 110L, 101L, 105L, 155L, 101L, 101L, 125L, 200L, 251L, 120L, 210L, 215L, 50L, 70L, 210L, 60L, 
        230L, 225L, 110L), Sauts = c(60L, 60L, 101L, 37L, 58L, 42L, 38L, 40L, 40L, 250L, 38L, 115L, 105L, 50L, 31L, 120L, 
        25L, 80L, 73L, 43L)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", 
        "12", "13", "14", "15", "16", "17", "18", "19", "20"))
    X <- structure(list(Poids = c(191L, 189L, 193L, 162L, 189L, 182L, 211L, 167L, 176L, 154L, 169L, 166L, 154L, 247L, 193L, 
        202L, 176L, 157L, 156L, 138L), Tourdetaille = c(36L, 37L, 38L, 35L, 35L, 36L, 38L, 34L, 31L, 33L, 34L, 33L, 34L, 
        46L, 36L, 37L, 37L, 32L, 33L, 33L), Pouls = c(50L, 52L, 58L, 62L, 46L, 56L, 56L, 60L, 74L, 56L, 50L, 52L, 64L, 50L, 
        46L, 62L, 54L, 52L, 54L, 68L)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"))
    calibrate:::rda(X = X, Y = Y)
}




