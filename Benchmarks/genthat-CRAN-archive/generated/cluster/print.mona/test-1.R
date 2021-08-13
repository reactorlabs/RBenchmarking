

genthat_extracted_call <- function() {
    animals <- structure(list(war = c(1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L), fly = c(1L, 
        2L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), ver = c(1L, 1L, 2L, 1L, 2L, 2L, 2L, 
        2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 2L), end = c(1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, NA, 
        1L, 1L, 2L, 1L, 1L, NA, 2L), gro = c(2L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 1L, NA, 2L, 2L, 1L, NA, 2L, 2L, NA, 1L, 
        2L), hai = c(1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L)), class = "data.frame", 
        row.names = c("ant", "bee", "cat", "cpl", "chi", "cow", "duc", "eag", "ele", "fly", "fro", "her", "lio", "liz", "lob", 
            "man", "rab", "sal", "spi", "wha"))
    mona <- cluster::mona
    x <- structure(list(data = structure(c(0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 1L, 
        0L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 
        0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 
        0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 
        0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 0L), .Dim = c(20L, 6L), .Dimnames = list(c("ant", "bee", "cat", "cpl", 
        "chi", "cow", "duc", "eag", "ele", "fly", "fro", "her", "lio", "liz", "lob", "man", "rab", "sal", "spi", "wha"), 
        c("war", "fly", "ver", "end", "gro", "hai"))), hasNA = TRUE, order = c(1L, 4L, 19L, 15L, 2L, 10L, 11L, 12L, 14L, 
        18L, 3L, 6L, 17L, 5L, 13L, 16L, 9L, 20L, 7L, 8L), variable = c("gro", "NULL", "hai", "fly", "gro", "ver", "end", 
        "gro", "NULL", "war", "gro", "NULL", "end", "NULL", "NULL", "hai", "NULL", "fly", "end"), step = c(4L, 0L, 5L, 3L, 
        4L, 2L, 3L, 4L, 0L, 1L, 4L, 0L, 3L, 0L, 0L, 4L, 0L, 2L, 3L), order.lab = c("ant", "cpl", "spi", "lob", "bee", "fly", 
        "fro", "her", "liz", "sal", "cat", "cow", "rab", "chi", "lio", "man", "ele", "wha", "duc", "eag"), call = mona(x = animals)), 
        class = "mona")
    cluster:::print.mona(x = x)
}




