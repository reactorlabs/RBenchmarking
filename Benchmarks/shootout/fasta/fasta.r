# ------------------------------------------------------------------
# The Computer Language Shootout
# http://shootout.alioth.debian.org/
#
# Contributed by Leo Osvald
# ------------------------------------------------------------------
width <- 60L
myrandom_last <- 42L
myrandom <- function(m) {
    myrandom_last <<- (myrandom_last * 3877L + 29573L) %% 139968L
    return(m * myrandom_last / 139968)
}

alu <- paste(
    "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGG",
    "GAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGA",
    "CCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAAT",
    "ACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCA",
    "GCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGG",
    "AGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCC",
    "AGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA",
    sep="", collapse="")

iub <- matrix(c(
    c(0.27, 'a'),
    c(0.12, 'c'),
    c(0.12, 'g'),
    c(0.27, 't'),
    c(0.02, 'B'),
    c(0.02, 'D'),
    c(0.02, 'H'),
    c(0.02, 'K'),
    c(0.02, 'M'),
    c(0.02, 'N'),
    c(0.02, 'R'),
    c(0.02, 'S'),
    c(0.02, 'V'),
    c(0.02, 'W'),
    c(0.02, 'Y')
), 2)

homosapiens <- matrix(c(
    c(0.3029549426680, 'a'),
    c(0.1979883004921, 'c'),
    c(0.1975473066391, 'g'),
    c(0.3015094502008, 't')
), 2)

repeat_fasta <- function(s, count) {
    chars <- strsplit(s, split="")[[1]]
    len <- nchar(s)
    s2 <- c(chars, chars[1:width])
    pos <- 1L
    while (count) {
        line <- min(width, count)
        next_pos <- pos + line
        
        cat(s2[pos:(next_pos - 1)], "\n", sep="")
        pos <- next_pos
        if (pos > len) pos <- pos - len
        count <- count - line
    }
}


colSums <- function(x, na.rm = FALSE, dims = 1L)
{
    if(is.data.frame(x)) x <- as.matrix(x)
    if(!is.array(x) || length(dn <- dim(x)) < 2L)
        stop("'x' must be an array of at least two dimensions")
    if(dims < 1L || dims > length(dn) - 1L)
        stop("invalid 'dims'")
    
    n <- prod(dn[id <- seq_len(dims)])
    dn <- dn[-id]
    z <- if(is.complex(x))
        .Internal(colSums(Re(x), n, prod(dn), na.rm)) +
            1i * .Internal(colSums(Im(x), n, prod(dn), na.rm))
    else  .Internal(colSums(x, n, prod(dn), na.rm))
    
    if(length(dn) > 1L) {
        dim(z) <- dn
        dimnames(z) <- dimnames(x)[-id]
        
    } else {
        #names(z) <- dimnames(x)[[dims+1L]]
        ## ***********************************************************
        z <- `names<-`(z, dimnames(x)[[dims+1L]])
        #`*tmp*` <- z
        #z <- "names<-"(`*tmp*`, dimnames(x)[[dims+1L]])
        #rm(`*tmp*`)


    }
    z
    
}


# match.fun <- function (FUN, descend = TRUE)
# {
    
#     if ( is.function(FUN) )
#         return(FUN)
#     if (!(is.character(FUN) && length(FUN) == 1L || is.symbol(FUN))) {
  
#         ## Substitute in parent
#         FUN <- eval.parent(substitute(substitute(FUN)))
#         if (!is.symbol(FUN))
#             stop(gettextf("'%s' is not a function, character or symbol",
#                           deparse(FUN)), domain = NA)
#     }
#     envir <- parent.frame(2)
#     # if( descend )
#     #     FUN <- get(as.character(FUN), mode = "function", envir = envir)
#     # else {
#     #     FUN <- get(as.character(FUN), mode = "any", envir = envir)
#     #     if( !is.function(FUN) )
#     #        stop(gettextf("found non-function '%s'", FUN), domain = NA)
#     # }
#     # return(FUN)
# }

outer2 <- function (X, Y, FUN = "*", ...)
{
    
  
    if(is.array(X)) {
        dX <- dim(X)
        nx <- dimnames(X)
        no.nx <- is.null(nx)
    } else { # a vector
        dX <- length(X)  # cannot be long, as form a matrix below
        no.nx <- is.null(names(X))
        if(!no.nx) nx <- list(names(X))
    }
    if(is.array(Y)) {
        dY <- dim(Y)
        ny <- dimnames(Y)
        no.ny <- is.null(ny)
    } else { # a vector
        dY <- length(Y)
        no.ny <- is.null(names(Y))
        if(!no.ny) ny <- list(names(Y))
    }
    robj <-
        if (is.character(FUN) && FUN=="*") {
            if(!missing(...)) stop('using ... with FUN = "*" is an error')
            ## this is for numeric vectors, so dropping attributes is OK
            tcrossprod(as.vector(X), as.vector(Y))# faster than  as.vector(X) %*% t(as.vector(Y))
        } else {
            FUN <- match.fun(FUN)
            ## Y may have a class, so don't use rep.int
            Y <- rep(Y, rep.int(length(X), length(Y)))
            ##  length.out is not an argument of the generic rep()
            ##  X <- rep(X, length.out = length(Y))
            if(length(X))
                X <- rep(X, times = ceiling(length(Y)/length(X)))
            FUN(X, Y, ...)
        }

    # doesnt create less promises    
    dim(robj) <- c(dX, dY) # careful not to lose class here
    #robj <- `dim<-`(robj,c(dX, dY)) # careful not to lose class here


    ## no dimnames if both don't have ..
    if(!(no.nx && no.ny)) {
	if(no.nx) nx <- vector("list", length(dX)) else
	if(no.ny) ny <- vector("list", length(dY))

    #robj <- `dimnames<-`(robj, c(nx, ny))
	dimnames(robj) <- c(nx, ny)
    }
    robj
}


random_fasta <- function(genelist, count) {
    psum <- cumsum(genelist[1,])
    while (count) {
        line <- min(width, count)
            
        rs <- double(line)
        for (i in 1:line)
            rs[[i]] <- myrandom(1)

        

        X <- outer(psum, rs, "<")
        #print(X)
        # #
        # Y <- colSums(X) + 1
        # bb <- genelist[2, Y]
        # cat(bb, "\n", sep='')


        #OU <-  outer(psum, rs, "<")
        
        #H <- colSums(OU) + 1

      #  M <- matrix(1L,2L,nrow=2, ncol=2)
        #H <-  colSums(M)
        #H <-  length(M)
        
        #OU <- outer2(psum, rs, "<")
        #H <-  colSums2(OU) + 1
        #cat(genelist[2, H], "\n", sep='')


        #genelist[2, colSums(outer(psum, rs, "<")) + 1]
        
        #CS <- colSums(outer(psum, rs, "<"))
        #cat(genelist[2,  colSums2(outer(psum, rs, "<"))], "\n", sep='')
        
        H <- colSums(outer2(psum, rs, "<")) + 1
        cat(genelist[2, H], "\n", sep='')
       

        count <- count - line
    }
}

f1 <- function() {
    1
}

fasta <- function(args) {
    n = if (length(args)) as.integer(args[[1]]) else 1000L
    cat(">ONE Homo sapiens alu\n")
    repeat_fasta(alu, 2 * n)
    cat(">TWO IUB ambiguity codes\n")
    random_fasta(iub, 3L * n)
    cat(">THREE Homo sapiens frequency\n")
    random_fasta(homosapiens, 5L * n)
}

execute <- function(n) {
    fasta(n)
}
