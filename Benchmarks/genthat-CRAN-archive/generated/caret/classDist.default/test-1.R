library(caret)

function_to_run <- function() {
    trainSet <- c(49L, 65L, 74L, 146L, 122L, 150L, 128L, 47L, 24L, 71L, 100L, 89L, 110L, 20L, 114L, 111L, 131L, 41L, 139L, 
        27L, 109L, 5L, 84L, 34L, 92L, 104L, 3L, 58L, 97L, 42L, 142L, 30L, 43L, 15L, 22L, 123L, 8L, 36L, 68L, 86L, 18L, 130L, 
        126L, 69L, 4L, 98L, 50L, 99L, 88L, 87L, 145L, 26L, 6L, 105L, 2L, 124L, 21L, 96L, 115L, 10L, 40L, 129L, 33L, 140L, 
        73L, 29L, 76L, 9L, 35L, 16L, 107L, 93L, 120L, 138L, 80L, 55L, 90L, 94L, 57L, 121L, 77L, 13L, 53L, 54L, 32L, 60L, 
        85L, 17L, 44L, 83L, 72L, 135L, 118L, 149L, 48L, 136L, 64L, 38L, 1L, 144L)
    iris <- datasets::iris
    caret:::classDist.default(x = iris[trainSet, 1:4], y = iris$Species[trainSet])
}




