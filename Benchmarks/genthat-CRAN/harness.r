#!/usr/bin/env Rscript

verifyResult <- function(res, expected_retv) {
	isTRUE(all.equal(res, expected_retv))
}

innerBenchmarkLoop <- function(innerIterations, params) {
    for (i in 1:innerIterations) {
    }
    return(TRUE)
}

doRuns <- function(name, iterations, innerIterations, params) {
    total <- 0
    for (i in 1:iterations) {
				.Random.seed <<- params$.ext.seed

        startTime <- Sys.time()
        for (k in 1:innerIterations)
          res <- function_to_run()
        endTime <- Sys.time()

        if (!verifyResult(res, params$.ext.retv)) {
            message("res=", res, " expected=", params$.ext.retv)
            stop("Benchmark failed with incorrect result")
        }

        runTime <- (as.numeric(endTime) - as.numeric(startTime)) * 1000000

        cat(name, ": iterations=1 runtime: ", round(runTime), "us\n", sep = "")
        total <- total + runTime
    }
    total
}

run <- function(args) {
    if (length(args) < 2 || 3 < length(args))
        stop(printUsage())

    name <- args[[1]]
    numIterations <- strtoi(args[[2]])

    innerIterations <- 1
    if (length(args) >= 3)
      innerIterations <- strtoi(args[[3]])

    source(paste0(name, ".R"))
		params <- readRDS(paste0(name, ".ext"))
    
    total <- as.numeric(doRuns(name, numIterations, innerIterations, params));
    cat(name, ": ",
        "iterations=", numIterations, "; ",
        "average: ", round(total / numIterations), " us; ",
        "total: ", round(total), "us\n\n", sep="")
    #cat("Total runtime: ", total, "us\n\n", sep="")
}

printUsage <- function() {
    cat("harness.r benchmark num-iterations [inner-iterations]\n")
    cat("\n")
    cat("  benchmark           - benchmark class name\n")
    cat("  num-iterations      - number of times to execute benchmark\n")
    cat("  inner-iterations    - number of times the benchmark is executed in an inner loop,\n")
    cat("                        which is measured in total, default: 1\n")

}

run(commandArgs(trailingOnly=TRUE))
