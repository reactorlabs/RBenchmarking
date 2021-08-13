

genthat_extracted_call <- function() {
    interlocks <- c(87L, 107L, 94L, 48L, 66L, 69L, 46L, 16L, 77L, 6L, 18L, 29L, 36L, 20L, 13L, 6L, 31L, 27L, 23L, 13L, 32L, 
        28L, 4L, 42L, 17L, 40L, 29L, 29L, 21L, 3L, 32L, 29L, 40L, 5L, 33L, 21L, 18L, 18L, 13L, 2L, 22L, 13L, 2L, 0L, 18L, 
        9L, 31L, 16L, 28L, 34L, 33L, 7L, 12L, 15L, 13L, 16L, 27L, 12L, 11L, 0L, 16L, 17L, 55L, 15L, 44L, 18L, 20L, 19L, 9L, 
        12L, 17L, 15L, 27L, 30L, 27L, 12L, 11L, 28L, 8L, 12L, 18L, 23L, 51L, 35L, 8L, 43L, 4L, 18L, 20L, 13L, 22L, 10L, 1L, 
        6L, 30L, 6L, 11L, 20L, 7L, 13L, 0L, 14L, 19L, 4L, 2L, 2L, 7L, 25L, 29L, 5L, 12L, 25L, 2L, 25L, 2L, 16L, 3L, 9L, 1L, 
        0L, 1L, 1L, 1L, 6L, 12L, 5L, 5L, 0L, 4L, 5L, 33L, 11L, 3L, 3L, 5L, 25L, 14L, 1L, 0L, 12L, 18L, 11L, 39L, 3L, 2L, 
        8L, 0L, 11L, 13L, 1L, 10L, 0L, 0L, 11L, 9L, 6L, 11L, 1L, 14L, 1L, 8L, 7L, 1L, 9L, 10L, 3L, 0L, 12L, 6L, 1L, 0L, 2L, 
        2L, 23L, 10L, 1L, 0L, 7L, 14L, 7L, 5L, 6L, 9L, 5L, 8L, 8L, 0L, 5L, 0L, 11L, 1L, 4L, 0L, 8L, 1L, 8L, 0L, 5L, 0L, 1L, 
        18L, 1L, 3L, 11L, 6L, 0L, 28L, 11L, 2L, 16L, 5L, 8L, 8L, 3L, 5L, 2L, 0L, 0L, 21L, 1L, 8L, 0L, 3L, 0L, 28L, 0L, 2L, 
        2L, 4L, 4L, 3L, 2L, 9L, 4L, 1L, 1L, 11L, 3L, 6L, 8L, 0L, 5L, 0L, 0L, 0L, 5L, 6L, 0L)
    car:::boxCoxVariable(y = interlocks + 1)
}




