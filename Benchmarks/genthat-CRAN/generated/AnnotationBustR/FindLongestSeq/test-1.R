library(AnnotationBustR)

function_to_run <- function() {
    genbank.accessions <- c("KP978059.1", "KP978060.1", "JX516105.1", "JX516111.1")
    AnnotationBustR:::FindLongestSeq(Accessions = genbank.accessions)
}




