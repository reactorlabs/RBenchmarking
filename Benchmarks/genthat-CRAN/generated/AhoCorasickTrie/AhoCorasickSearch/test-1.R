library(AhoCorasickTrie)

function_to_run <- function() {
    keywords <- c("Abra", "cadabra", "is", "the", "Magic", "Word")
    AhoCorasickTrie:::AhoCorasickSearch(keywords = keywords, text = "Is Abracadabra the Magic Word?")
}




