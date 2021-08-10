library(ape)

function_to_run <- function() {
    pp <- structure(list(1:20, 1:17, 1:5, 2:5, 3:5, 3:4, 6:17, 6:9, 6:7, 8:9, 10:17, 10:11, 12:17, 13:17, 13:16, 13:15, 13:14, 
        18:20, 19:20), number = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), class = "prop.part", 
        labels = c("t4", "t5", "t14", "t15", "t3", "t9", "t17", "t11", "t20", "t19", "t13", "t12", "t2", "t18", "t16", "t8", 
            "t1", "t10", "t6", "t7"))
    ape:::as.bitsplits.prop.part(x = pp)
}




