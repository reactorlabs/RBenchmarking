library(prodlim)

function_to_run <- function() {
    st <- y ~ x + z + factor(v)
    d <- structure(list(y = c(-0.0845860713710238, 0.840400125597476, -0.463482772187991, -0.550835004480379, 0.736040432105293),
        x = structure(c(1L, 2L, 2L, 1L, 3L), .Label = c("a", "b", "c"), class = "factor"), z = structure(c(2L, 2L, 7L, 7L,
            7L), .Label = c("1", "2", "3", "4", "5", "6", "7", "8"), class = "factor"), v = structure(c(1L, 4L, 2L, 5L, 3L),
            .Label = c("a", "c", "f", "r", "x"), class = "factor")), row.names = c(NA, -5L), class = "data.frame")
    prodlim:::model.design(terms = st, data = d, specialsFactor = TRUE, specialsDesign = "SP")
}




