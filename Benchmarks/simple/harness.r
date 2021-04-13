
verifyResult <- function(x, ...) {
    UseMethod("verifyResult", x)
}

verifyResult.default <- function(result, benchmarkParameter) {
    TRUE
}

innerBenchmarkLoop <- function(x, ...) {
    UseMethod("innerBenchmarkLoop", x)
}

innerBenchmarkLoop.default <- function(class, benchmarkParameter) {

    # .Call("rirResetCreatedPromises")
    # .Call("rirResetCreatedPromisesAST")
    # .Call("rirResetInlinedPromises")

    
    result <- execute(benchmarkParameter)
    # recordMeasurement(
        
    #     .Call("rirCreatedPromises"),
    #     .Call("rirCreatedPromisesAST"),
    #     .Call("rirInlinedPromises")
    #     )

    verifyResult(result, benchmarkParameter)
}



doRuns <- function(name, iterations, benchmarkParameter) {

       recordMeasurement <<- function(GC_time){

        suite <- paste("simple", if (grepl("strict", name)) "_annotations" else "", sep="")
        benchmarkName <- tail(strsplit(name, "/")[[1]], n=1)
            

        line <- paste(suite,  benchmarkName, paste(suite,benchmarkName, sep="/"), 
          GC_time, sep=",")     
        write(line, file = "~/dataGC.csv",
        append = TRUE)

    }

    total <- 0
    class(name) <- tolower(name)
    timeGC_start <- 0

    for (i in 1:iterations) {

        if (i==6) {
                gc()
                timeGC_start <- gc.time(TRUE)
        }


        #startTime <- Sys.time()
        if (!innerBenchmarkLoop(name, benchmarkParameter)) {
            stop("Benchmark failed with incorrect result")
        }
        #endTime <- Sys.time()
        #runTime <- (as.numeric(endTime) - as.numeric(startTime)) * 1000000

        #cat(name, ": iterations=1 runtime: ", round(runTime), "us\n", sep = "")
        #total <- total + runTime
    }


    timeGC_end <- gc.time(TRUE)  
    recordMeasurement(timeGC_end[[3]] -timeGC_start[[3]])


    total
}

run <- function(args) {
    if (length(args) != 3)
        stop(printUsage())

    name <- args[[1]]
    numIterations <- strtoi(args[[2]])
    benchmarkParameter <- strtoi(args[[3]])

    source(file.path(".", paste(name, ".r", sep="")))
    
    total <- as.numeric(doRuns(name, numIterations, benchmarkParameter));
    cat(name, ": ",
        "iterations=", numIterations, "; ",
        "average: ", round(total / numIterations), " us; ",
        "total: ", round(total), "us\n\n", sep="")
    #cat("Total runtime: ", total, "us\n\n", sep="")
}

printUsage <- function() {
    cat("harness.r benchmark num-iterations benchmark-parameter [inner-iter]\n")
    cat("\n")
    cat("  benchmark           - benchmark class name\n")
    cat("  num-iterations      - number of times to execute benchmark\n")
    cat("  benchmark-parameter - size of the benchmark problem\n")
    cat("  inner-iter          - number of times the benchmark is executed in an inner loop,\n")
    cat("                        which is measured in total, default: 1\n")
}

run(commandArgs(trailingOnly=TRUE))
