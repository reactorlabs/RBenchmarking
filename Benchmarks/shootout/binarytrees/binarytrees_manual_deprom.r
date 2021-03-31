# ------------------------------------------------------------------
# The Computer Language Shootout
# http://shootout.alioth.debian.org/
#
# Contributed by Leo Osvald
# ------------------------------------------------------------------

tree <- function(item, depth) {
    if (depth == 0L) {
        RET <- c(item, NA, NA)
        return(RET)
    }
    # it is ridiculous that this doesn't help
    next_depth <- depth - 1L
    right_item <- 2L * item
    left_item <- right_item - 1L

    T1 <- tree(left_item, next_depth)
    T2 <- tree(right_item, next_depth)
    L <- list(item,
                T1,
                T2)
    return(L)
}

check <- function(tree) {
    
    T1 <- tree[[2]]
    T2 <- T1[[1]]
    IFC <- is.na(T2)

  
   
    if(IFC){ 
        tree[[1]]
    } else {
        X1 <- tree[[2]] 
        B1 <- check(X1)

        X2 <- tree[[3]]
        B2 <- check(X2)
 
        tree[[1]] + B1 - B2
    }
}

binarytrees <- function(args) {
    n = if (length(args)){
        AA <- args[[1]]
        as.integer(AA) 
    } 
    else 13L

    min_depth <- 4L
    A <-  min_depth + 2L
    max_depth <- max(A, n)
    stretch_depth <- max_depth + 1L


    T <- tree(0L, stretch_depth)
    CH <- check(T)
    cat(sep="", "stretch tree of depth ", stretch_depth, "\t check: ",
        CH, "\n")

    long_lived_tree <- tree(0L, max_depth)


    SEQ <- seq(min_depth, max_depth, 2L)
    for (depth in SEQ) {

        EX <- max_depth - depth + min_depth
        PO <- 2^(EX)
        iterations <- as.integer(PO)

        IT <-1:iterations
        FU <- function(i) {

            TR1 <- tree(i, depth)
            CHECK1 <- check(TR1)

            TR2 <- tree(-i, depth)
            CHECK2 <- check(TR2)
            CHECK1 + CHECK2
        }

        AP <- sapply(
                IT,
		FU)


        check_sum <- sum(AP)

        IT <- iterations * 2L
        cat(sep="", IT, "\t trees of depth ", depth, "\t check: ",
            check_sum, "\n")
    }

    CH2 <- check(long_lived_tree)
    cat(sep="", "long lived tree of depth ", max_depth, "\t check: ", 
        CH2, "\n")
}

execute <- function(n) {
    binarytrees(n)
}
