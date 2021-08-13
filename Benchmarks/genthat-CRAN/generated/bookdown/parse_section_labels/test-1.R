

genthat_extracted_call <- function() {
    content <- c("<caption><span id=\"tab:foo\">Table 1: </span> A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::parse_section_labels(content = content)
}




