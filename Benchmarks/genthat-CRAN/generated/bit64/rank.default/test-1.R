library(bit64)

function_to_run <- function() {
    x <- c(103L, 79L, 119L, 95L, 88L, 46L, 48L, 24L, 125L, 80L, 25L, 7L, 10L, 93L, 37L, 103L, 1L, 43L, 15L, 17L, 80L, 76L, 
        33L, 58L, 20L, 88L, 42L, 128L, 125L, 89L, 115L, 117L, 119L, 122L, 127L, 38L, 39L, 100L, 16L, 64L, 120L, 77L, 94L, 
        29L, 120L, 118L, 58L, 97L, 18L, 51L, 52L, 11L, 122L, 66L, 59L, 19L, 46L, 56L, 114L, 12L, 82L, 7L, 24L, 25L, 118L, 
        53L, 51L, 23L, 63L, 96L, 28L, 33L, 127L, 45L, 101L, 86L, 15L, 61L, 102L, 80L, 119L, 16L, 3L, 124L, 51L, 100L, 9L, 
        9L, 99L, 77L, 69L, 8L, 37L, 69L, 22L, 108L, 104L, 42L, 29L, 107L, 53L, 9L, 7L, 24L, 22L, 3L, 4L, 22L, 49L, 63L, 105L, 
        112L, 92L, 74L, 125L, 60L, 29L, 22L, 53L, 17L, 14L, 96L, 111L, 117L, 29L, 127L, 98L, NA)
    bit64:::rank.default(x = x, na.last = "keep")
}




