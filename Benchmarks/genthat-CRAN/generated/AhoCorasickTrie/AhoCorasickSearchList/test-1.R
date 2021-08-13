

genthat_extracted_call <- function() {
    keywords <- c("Abra", "cadabra", "is", "the", "Magic", "Word")
    AhoCorasickTrie:::AhoCorasickSearchList(keywords = keywords, textList = list(c("What in", "the world"), c("is"), "secret about", 
        "the Magic Word?"))
}




