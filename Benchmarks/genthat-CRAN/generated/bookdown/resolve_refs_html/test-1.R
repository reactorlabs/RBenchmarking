

genthat_extracted_call <- function() {
    bookdown:::resolve_refs_html(content = c("<caption>(#tab:foo) A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>"), 
        global = TRUE)
}




