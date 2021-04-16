innerBenchmarkLoop.default <- function(class, iterations) {


  for (i in 1:iterations) {

    if (!verifyResult(execute(), iterations)) {
        return(FALSE)
    }

  }

 
  return(TRUE)
}

innerBenchmarkLoop <- function(x, ...) {


  UseMethod("innerBenchmarkLoop", x)

  

}


doRuns <- function(name, iterations, innerIterations) {

  outputFileFullPath <- Sys.getenv("MEASUREMENT_FILE")
  stopifnot(outputFileFullPath != "")

 if (!file.exists(outputFileFullPath)) {
        headerLine <- paste("suite" , "benchmarkName", "benchmarkId", "gc_time", sep=",")     
        write(headerLine, file = outputFileFullPath,
        append = TRUE)
       
 }

  recordMeasurement <<- function(mkPromiseTime){

        suite <- paste("are-we-fast-r", if (grepl("strict", name)) "_annotations" else "", sep="")
        benchmarkName <- tail(strsplit(name, "/")[[1]], n=1)
            

        line <- paste(suite,  benchmarkName, paste(suite,benchmarkName, sep="/"), 
          mkPromiseTime, sep=",")     
        write(line, file = outputFileFullPath,
        append = TRUE)

    }

  
  total <- 0
  class(name) = tolower(name)

  #timeGC_start <- timeGC_start <- gc.time(TRUE)

  for (i in 1:iterations) {
    

    # if (i==6) {
    #       gc()
    #       timeGC_start <- gc.time(TRUE)
    # }
    #startTime =  Sys.time()

    .Call("rirResetMkPromiseTime")
    # .Call("rirResetCreatedPromisesAST")
    # .Call("rirResetInlinedPromises")
  

    if (!innerBenchmarkLoop(name, innerIterations)) {
      
      stop ("Benchmark failed with incorrect result")
    }

     recordMeasurement(
  
      .Call("rirMkPromiseTime")
      
      )
    
    #endTime <- Sys.time()
    runTime = 1 #(as.numeric(endTime) - as.numeric(startTime)) * 1000000 

     cat(paste(paste(paste(name, ": iterations=1 runtime:", sep = ""), 
             round(runTime)), "us\n", sep = ""))
     total = total + runTime
  }

  #timeGC_end <- gc.time(TRUE)  
  #recordMeasurement(timeGC_end[[3]] -timeGC_start[[3]])



  return (total)
}

run <- function(args) {
  if (length(args) == 0)
    stop(printUsage())

  name = args[1]
  
  numIterations = 1 
  innerIterations = 1
  
  if (length(args) > 1) {
    numIterations = strtoi(args[2])
    if (length(args) > 2) {
      innerIterations = strtoi(args[3]);
    }
  }

  source(paste(paste("./", tolower(name), sep = ""), ".r", sep = ""))
  
  total = as.numeric(doRuns(name, numIterations, innerIterations));
  cat(paste(paste(name, ": iterations=", sep=""), numIterations, sep=""))
  cat(paste("; average:", round(total / numIterations)))
  cat(paste(paste(" us; total:", round(total)), "us\n\n", sep=""))
  #cat("\n")
  #cat(paste(paste("Total Runtime:", round(total)), "us\n\n", sep=""))
}

printUsage <- function() {
  cat("harness.r [benchmark] [num-iterations [inner-iter]]\n")
  cat("\n")
  cat("  benchmark      - benchmark class name\n")
  cat("  num-iterations - number of times to execute benchmark, default: 1\n")
  cat("  inner-iter     - number of times the benchmark is executed in an inner loop,\n")
  cat("                   which is measured in total, default: 1\n")
}

run(commandArgs(trailingOnly=TRUE))