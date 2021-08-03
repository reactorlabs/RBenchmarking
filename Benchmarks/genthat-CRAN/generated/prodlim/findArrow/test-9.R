library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(39.1228571428571, 78.2457142857143, 0), names = c("box1", "box2", "box3"))
    xbox.position <- structure(c(0, 78.8422857142857, 78.8422857142857), names = c("box1", "box2", "box3"))
    to.state <- structure(3L, .Label = c("1", "2", "3"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2", "3"), class = "factor")
    box.width <- c(21.1577142857143, 21.1577142857143, 21.1577142857143)
    box.height <- c(21.7542857142857, 21.7542857142857, 21.7542857142857)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




