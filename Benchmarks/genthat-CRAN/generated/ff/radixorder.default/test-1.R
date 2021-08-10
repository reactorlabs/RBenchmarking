library(ff)

function_to_run <- function() {
    x <- c(88L, 16L, 97L, 65L, 33L, 41L, 40L, 42L, 8L, 52L, 1L, 77L, 4L, 60L, 3L, 33L, 92L, 48L, 38L, 32L, 80L, 1L, 6L, 60L, 
        95L, 26L, 55L, 3L, 1L, 96L, 16L, 78L, 69L, 34L, 2L, 10L, 34L, 3L, 91L, 95L, 37L, 84L, 34L, 60L, 15L, 75L, 77L, 30L, 
        18L, 61L, 96L, 52L, 64L, 39L, 46L, 78L, 68L, 20L, 51L, 44L, 90L, 30L, 66L, 4L, 99L, 65L, 93L, 94L, 21L, 83L, 47L, 
        89L, 4L, 24L, 6L, 45L, 24L, 77L, 49L, 35L, 61L, 67L, 98L, 2L, 35L, 38L, 26L, 66L, 63L, 99L, 91L, 36L, 27L, 68L, 26L, 
        80L, 4L, 2L, 18L, 25L)
    i <- c(11L, 22L, 29L, 35L, 84L, 98L, 15L, 28L, 38L, 13L, 64L, 73L, 97L, 23L, 75L, 9L, 36L, 45L, 2L, 31L, 49L, 99L, 58L, 
        69L, 74L, 77L, 100L, 26L, 87L, 95L, 93L, 48L, 62L, 20L, 5L, 16L, 34L, 37L, 43L, 80L, 85L, 92L, 41L, 19L, 86L, 54L, 
        7L, 6L, 8L, 60L, 76L, 55L, 71L, 18L, 79L, 59L, 10L, 52L, 27L, 14L, 24L, 44L, 50L, 81L, 89L, 53L, 4L, 66L, 63L, 88L, 
        82L, 57L, 94L, 33L, 46L, 12L, 47L, 78L, 32L, 56L, 21L, 96L, 70L, 42L, 1L, 72L, 61L, 39L, 91L, 17L, 67L, 68L, 25L, 
        40L, 30L, 51L, 3L, 83L, 65L, 90L)
    ff:::radixorder.default(x = x, i = i, has.na = FALSE)
}




