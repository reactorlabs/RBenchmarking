

genthat_extracted_call <- function() {
    Moore <- structure(list(partner.status = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), 
        .Label = c("high", "low"), class = "factor"), conformity = c(NA, 4L, 8L, 7L, 10L, 6L, 12L, 4L, 13L, 12L, 4L, 13L, 
        7L, 9L, 9L, 24L, 6L, 7L, 23L, 13L, 8L, 12L, 19L, 12L, 21L, 9L, 23L, 7L, 17L, 14L, 11L, 16L, 15L, 20L, 8L, 12L, 14L, 
        14L, 17L, 7L, 17L, 13L, 16L, 10L, 15L), fcategory = structure(c(2L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 2L, 2L, 3L, 1L, 2L, 
        3L, 1L, 1L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 3L, 2L, 1L, 2L, 1L, 3L, 3L, 1L, 3L, 2L, 3L, 3L, 2L, 1L, 3L, 3L, 3L, 3L, 1L, 
        2L, 1L, 3L), .Label = c("high", "low", "medium"), class = "factor"), fscore = c(37L, 57L, 65L, 20L, 36L, 18L, 51L, 
        44L, 31L, 36L, 42L, 56L, 28L, 43L, 65L, 57L, 28L, 61L, 57L, 55L, 17L, 35L, 68L, 41L, 16L, 63L, 15L, 54L, 48L, 42L, 
        59L, 45L, 30L, 44L, 42L, 22L, 52L, 42L, 41L, 50L, 39L, 57L, 35L, 52L, 44L)), row.names = c("1", "2", "3", "4", "5", 
        "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", 
        "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", 
        "45"), class = "data.frame")
    car:::Tapply(formula = conformity ~ partner.status + fcategory, fun = mean, data = Moore, na.rm = TRUE)
}




