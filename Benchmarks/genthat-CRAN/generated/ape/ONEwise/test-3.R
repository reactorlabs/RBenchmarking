

genthat_extracted_call <- function() {
    x <- structure(list(1:10, 1:4, 1:3, 2:3, 5:9, 5:6, 7:9, 8:9), number = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), class = "prop.part", 
        labels = c("t7", "t2", "t3", "t8", "t1", "t5", "t6", "t9", "t10", "t4"))
    ape:::ONEwise(x = x)
}




