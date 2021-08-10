library(bookdown)

function_to_run <- function() {
    content <- c("<caption>(#tab:foo) A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::resolve_ref_links_html(x = content)
}




