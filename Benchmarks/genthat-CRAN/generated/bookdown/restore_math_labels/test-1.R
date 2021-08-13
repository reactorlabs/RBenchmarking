

genthat_extracted_call <- function() {
    content <- c("<caption>(#tab:foo) A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::restore_math_labels(x = content)
}




