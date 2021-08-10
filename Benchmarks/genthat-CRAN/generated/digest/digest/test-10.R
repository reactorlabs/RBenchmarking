library(digest)

function_to_run <- function() {
    md5Input <- c("", "a", "abc", "message digest", "abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", 
        "12345678901234567890123456789012345678901234567890123456789012345678901234567890")
    i <- 5L
    digest:::digest(object = md5Input[i], serialize = FALSE)
}




