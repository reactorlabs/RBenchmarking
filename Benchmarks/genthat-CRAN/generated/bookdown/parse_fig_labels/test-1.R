library(bookdown)

function_to_run <- function() {
    global <- TRUE
    content <- c("<caption>(#tab:foo) A nice table.</caption>", "<p>See Table @ref(tab:foo).</p>")
    bookdown:::parse_fig_labels(content = content, global = global)
}




