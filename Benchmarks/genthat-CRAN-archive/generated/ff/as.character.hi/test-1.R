

genthat_extracted_call <- function() {
    x <- structure(1:6, names = c("a", "b", "c", "d", "e", "f"))
    as.hi <- ff::as.hi
    ff:::as.character.hi(x = as.hi(letters[1:3], names = names(x)), names = names(x))
}




