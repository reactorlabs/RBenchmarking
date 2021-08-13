

genthat_extracted_call <- function() {
    cdata <- structure(list(ftime = c(959L, 383L, 1034L, 83L, 20L, 20L, 20L, 20L, 374L, 39L, 7L, 3L, 177L, 34L, 149L, 670L, 
        996L, 446L, 1L, 20L, 2L, 1L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 7L, 1L, 92L, 20L, 72L, 20L, 1L, 20L, 20L, 20L, 
        20L, 20L, 20L, 20L, 20L, 20L, 20L, 93L, 1158L, 286L, 450L, 366L, 20L, 20L, 262L, 640L, 20L, 20L, 20L, 20L, 34L, 632L, 
        167L, 20L, 5L, 20L, 14L, 4L, 1L, 20L, 20L, 20L, 162L, 887L, 64L, 20L, 20L, 451L, 20L, 20L, 20L, 20L, 515L, 6L, 28L, 
        696L, 20L, 20L, 20L, 20L, 20L, 20L, 262L, 11L, 139L, 128L, 110L, 1L, 250L, 20L, 20L, 20L, 206L, 1056L, 20L, 20L, 
        20L, 20L, 332L, 4L, 1248L, 192L, 20L, 20L, 1L, 20L, 20L, 20L, 31L, 410L, 20L, 20L, 1021L, 40L, 99L, 339L, 103L, 2L, 
        20L, 20L, 209L, 426L, 821L, 851L, 20L, 20L, 35L, 1L, 3L, 20L, 770L, 17L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 20L, 
        20L, 20L, 381L, 390L, 72L, 1L, 273L, 25L, 1117L, 20L, 20L, 20L, 360L, 82L, 468L, 833L, 20L, 20L, 20L, 2L, 712L, 239L, 
        528L, 409L, 20L, 20L, 10L, 20L, 550L, 42L, 20L, 20L, 277L, 71L, 20L, 20L, 42L, 2L, 2L, 20L, 20L, 20L, 197L, 4L, 370L, 
        77L, 20L, 20L, 523L, 127L), fstatus = c(0L, 1L, 0L, 2L, 1L, 1L, 1L, 1L, 0L, 2L, 1L, 1L, 0L, 1L, 0L, 1L, 0L, 2L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 1L, 0L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 
        0L, 2L, 0L, 2L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 0L, 2L, 2L, 2L, 
        0L, 1L, 1L, 2L, 2L, 0L, 2L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 2L, 2L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 
        1L, 1L, 2L, 2L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 0L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 0L, 0L, 0L, 0L, 1L, 
        1L, 0L, 2L, 1L, 1L, 0L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 2L, 1L, 1L, 0L, 2L, 1L, 1L, 1L, 1L, 
        0L, 1L, 2L, 2L, 1L, 1L, 0L, 2L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 2L, 2L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        2L, 1L, 1L, 1L, 1L, 0L, 2L), z = c(0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 
        0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 
        1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 
        0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 
        1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 
        0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 
        1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 
        0L, 1L, 0L, 1L, 0L, 1L), ID = c(1L, 1L, 2L, 2L, 3L, 3L, 4L, 4L, 5L, 5L, 6L, 6L, 7L, 7L, 8L, 8L, 9L, 9L, 10L, 10L, 
        11L, 11L, 12L, 12L, 13L, 13L, 14L, 14L, 15L, 15L, 16L, 16L, 17L, 17L, 18L, 18L, 19L, 19L, 20L, 20L, 21L, 21L, 22L, 
        22L, 23L, 23L, 24L, 24L, 25L, 25L, 26L, 26L, 27L, 27L, 28L, 28L, 29L, 29L, 30L, 30L, 31L, 31L, 32L, 32L, 33L, 33L, 
        34L, 34L, 35L, 35L, 36L, 36L, 37L, 37L, 38L, 38L, 39L, 39L, 40L, 40L, 41L, 41L, 42L, 42L, 43L, 43L, 44L, 44L, 45L, 
        45L, 46L, 46L, 47L, 47L, 48L, 48L, 49L, 49L, 50L, 50L, 51L, 51L, 52L, 52L, 53L, 53L, 54L, 54L, 55L, 55L, 56L, 56L, 
        57L, 57L, 58L, 58L, 59L, 59L, 60L, 60L, 61L, 61L, 62L, 62L, 63L, 63L, 64L, 64L, 65L, 65L, 66L, 66L, 67L, 67L, 68L, 
        68L, 69L, 69L, 70L, 70L, 71L, 71L, 72L, 72L, 73L, 73L, 74L, 74L, 75L, 75L, 76L, 76L, 77L, 77L, 78L, 78L, 79L, 79L, 
        80L, 80L, 81L, 81L, 82L, 82L, 83L, 83L, 84L, 84L, 85L, 85L, 86L, 86L, 87L, 87L, 88L, 88L, 89L, 89L, 90L, 90L, 91L, 
        91L, 92L, 92L, 93L, 93L, 94L, 94L, 95L, 95L, 96L, 96L, 97L, 97L, 98L, 98L, 99L, 99L, 100L, 100L)), class = "data.frame", 
        row.names = c(NA, -200L))
    crrSC:::crrc(ftime = cdata[, 1], fstatus = cdata[, 2], cov1 = cdata[, 3], cluster = cdata[, 4])
}




