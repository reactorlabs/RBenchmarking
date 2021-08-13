

genthat_extracted_call <- function() {
    i <- 2L
    content <- c("<caption><span id=\"tab:foo\">Table 1: </span> A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::is_img_line(x = content[i])
}




