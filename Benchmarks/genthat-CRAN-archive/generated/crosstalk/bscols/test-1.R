

genthat_extracted_call <- function() {
    div <- htmltools::div
    css <- htmltools::css
    crosstalk:::bscols(div(style = css(width = "100%", height = "400px", background_color = "red")), div(style = css(width = "100%", 
        height = "400px", background_color = "blue")), div(style = css(width = "100%", height = "400px", background_color = "red")), 
        div(style = css(width = "100%", height = "400px", background_color = "blue")), widths = c(2, 4))
}




