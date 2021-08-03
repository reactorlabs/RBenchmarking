library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(78.2457142857143, 0, 78.2457142857143, 0), names = c("box1", "box2", "box3", "box4"))
    xbox.position <- structure(c(0, 0, 75, 75), names = c("box1", "box2", "box3", "box4"))
    to.state <- structure(2L, .Label = c("1", "2", "3", "4"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2", "3", "4"), class = "factor")
    box.width <- c(29.7205714285714, 29.7205714285714, 29.7205714285714, 29.7205714285714)
    box.height <- c(21.7542857142857, 21.7542857142857, 21.7542857142857, 21.7542857142857)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




