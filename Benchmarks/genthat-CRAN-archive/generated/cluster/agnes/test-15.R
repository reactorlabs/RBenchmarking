

genthat_extracted_call <- function() {
    animals <- structure(list(war = c(1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L), fly = c(1L, 
        2L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), ver = c(1L, 1L, 2L, 1L, 2L, 2L, 2L, 
        2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 2L), end = c(1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, NA, 
        1L, 1L, 2L, 1L, 1L, NA, 2L), gro = c(2L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 1L, NA, 2L, 2L, 1L, NA, 2L, 2L, NA, 1L, 
        2L), hai = c(1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L)), class = "data.frame", 
        row.names = c("ant", "bee", "cat", "cpl", "chi", "cow", "duc", "eag", "ele", "fly", "fro", "her", "lio", "liz", "lob", 
            "man", "rab", "sal", "spi", "wha"))
    cluster:::agnes(x = animals, method = "gaverage")
}




