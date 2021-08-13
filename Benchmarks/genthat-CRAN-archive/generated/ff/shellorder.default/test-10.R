library(ff)

function_to_run <- function() {
    x <- c(5, -5, Inf, 5, 5, 0, -Inf, -5, 5, NaN, NaN, NA, Inf, 0, Inf, -Inf, -Inf, NA, Inf, NA, NA, 5, 0, 0, -5, Inf, 0, 
        NaN, 5, -Inf, NA, NA, NaN, NaN, NaN, 0, -5, -Inf, -Inf, 0, NA, 0, Inf, -5, -5, NA, 5, NaN, NA, NA, 0, 0, 0, 0, Inf, 
        -5, -Inf, -Inf, 5, Inf, 5, NA, NA, -5, NaN, -5, Inf, -Inf, -5, Inf, 0, 0, 5, -5, NA, 5, NA, 5, NA, 0, -5, -Inf, NaN, 
        -5, -Inf, 5, NA, Inf, 5, 5, NaN, 5, 0, NaN, Inf, 5, 5, 5, NA, -Inf)
    i <- c(7L, 16L, 17L, 30L, 38L, 39L, 57L, 58L, 68L, 82L, 85L, 100L, 2L, 8L, 25L, 37L, 44L, 45L, 56L, 64L, 66L, 69L, 74L, 
        81L, 84L, 6L, 14L, 23L, 24L, 27L, 36L, 40L, 42L, 51L, 52L, 53L, 54L, 71L, 72L, 80L, 93L, 1L, 4L, 5L, 9L, 22L, 29L, 
        47L, 59L, 61L, 73L, 76L, 78L, 86L, 89L, 90L, 92L, 96L, 97L, 98L, 3L, 13L, 15L, 19L, 26L, 43L, 55L, 60L, 67L, 70L, 
        88L, 95L, 10L, 11L, 12L, 18L, 20L, 21L, 28L, 31L, 32L, 33L, 34L, 35L, 41L, 46L, 48L, 49L, 50L, 62L, 63L, 65L, 75L, 
        77L, 79L, 83L, 87L, 91L, 94L, 99L)
    ff:::shellorder.default(x = x, i = i, stabilize = TRUE)
}




