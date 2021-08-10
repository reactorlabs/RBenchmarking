library(bookdown)

function_to_run <- function() {
    x <- c("<caption>(#tab:foo) A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::parse_ref_links(x = x, regexp = "^<p>%s (.+)</p>$")
}




