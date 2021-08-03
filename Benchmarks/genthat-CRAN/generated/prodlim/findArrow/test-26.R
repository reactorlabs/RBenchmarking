library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(45.2942857142857, 90.5885714285714, 45.2942857142857, 0), names = c("box1", "box2", "box3",
        "box4"))
    xbox.position <- structure(c(0, 82.5657142857143, 82.5657142857143, 82.5657142857143), names = c("box1", "box2", "box3",
        "box4"))
    to.state <- structure(2L, .Label = c("1", "2", "3", "4"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2", "3", "4"), class = "factor")
    box.width <- c(17.4342857142857, 17.4342857142857, 17.4342857142857, 17.4342857142857)
    box.height <- c(9.41142857142857, 9.41142857142857, 9.41142857142857, 9.41142857142857)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




