

genthat_extracted_call <- function() {
    species <- c("gorilla", "spp.", "sapiens", "pygmaeus")
    geo <- c("Africa", "Africa", "World", "Asia")
    genus <- c("Gorilla", "Pan", "Homo", "Pongo")
    ape:::mixedFontLabel(genus, species, geo, italic = 1:2, parenthesis = 3)
}




