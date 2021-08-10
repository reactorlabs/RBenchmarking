#!/usr/bin/env Rscript

# Get traceback                                            
options(error = function() {
  sink(stderr())   
  on.exit(sink(NULL))                                      
  traceback(3, max.lines = 1L)
  if (!interactive()) {      
    q(status = 1)                                          
  }                        
}) 


argv <- commandArgs(trailingOnly=TRUE)

if (length(argv) < 1 || length(argv) > 2) {
  message('record_retv.R <genthat_benchmarks_dir> [NCORES]')
  stop("Incorrect number of arguments")
}


library(foreach)
library(doParallel)

globals <- new.env()
globals$BENCH_DIR <- normalizePath(argv[[1]])
globals$SOURCING_SEED <- integer(1234)
globals$RUNNING_SEED <- integer(5689)

NCORES <- 1
if (length(argv) >= 2) {
  NCORES <- strtoi(argv[[2]])
}

cl <- parallel::makeForkCluster(NCORES, outfile="")
doParallel::registerDoParallel(cl)

TIMEOUT=100 #s

source_reproducible <- function(globals, Rfile) {
  .Random.seed <<- globals$SOURCING_SEED
  source(Rfile)
  .Random.seed <<- globals$RUNNING_SEED
  function_to_run()
}




# running the scripts might create files in the working directory
setwd(tempdir())

foreach (Rfile = list.files(globals$BENCH_DIR, pattern = ".*R$", full.names = TRUE, recursive = TRUE)) %dopar% {
  extfile <- gsub(".R$", ".ext", Rfile)
  message("Processing ", Rfile, " to generate ", extfile)

  if (file.exists(extfile)) {
    message("SKIP: Ext file exists ", extfile)
    next
  }

  tryCatch(
    {
      # Source the file and call the function in a new R session
      retv <- callr::r(source_reproducible, args=list(globals, Rfile), timeout=TIMEOUT)

      l <- list(
        sourcing_seed=globals$SOURCING_SEED,
        running_seed=globals$RUNNING_SEED,
        retv=retv
      )
      saveRDS(l, file=extfile)
    },
    error=function(e) {
      message("Failed to run ", Rfile, ": ", e)
      failname <- paste0(Rfile, ".failing")
      message("Renaming failing test ", Rfile, " to ", failname)
      file.rename(Rfile, failname)
    }
  )
}
