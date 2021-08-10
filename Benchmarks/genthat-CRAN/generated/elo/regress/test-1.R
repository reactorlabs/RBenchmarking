library(elo)

function_to_run <- function() {
    half <- c("First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season")
    elo:::regress(x = half, to = 1500, by = 0.2)
}




