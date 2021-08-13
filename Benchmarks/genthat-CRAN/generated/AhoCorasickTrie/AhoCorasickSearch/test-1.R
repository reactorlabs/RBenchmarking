

genthat_extracted_call <- function() {
    keywords <- c("Abra", "cadabra", "is", "the", "Magic", "Word")
    AhoCorasickTrie:::AhoCorasickSearch(keywords = keywords, text = "Is Abracadabra the Magic Word?")
}




