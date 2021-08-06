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

if (length(argv) != 1) {
  message('record_retv.R <genthat_benchmarks_dir>')
  stop("Incorrect number of arguments")
}


BENCH_DIR <- normalizePath(argv[[1]])
SOURCING_SEED <- integer(1234)
RUNNING_SEED <- integer(5689)


# running the scripts might create files in the working directory
setwd(tempdir())

for (Rfile in list.files(BENCH_DIR, pattern = "*.R", full.names = TRUE, recursive = TRUE)) {
  extfile <- gsub(".R$", ".ext", Rfile)
  message("Processing ", Rfile, " to generate ", extfile)

  retv <- NULL
  tryCatch(
    capture.output({
      .Random.seed <<- SOURCING_SEED
      source(Rfile)
      .Random.seed <<- RUNNING_SEED
      retv <- function_to_run()


      l <- list(
        sourcing_seed=SOURCING_SEED,
        running_seed=RUNNING_SEED,
        retv=retv
      )
      saveRDS(l, file=extfile)
    }),
    error=function(e) {
      message("Failed to run ", Rfile, ": ", e)
      failname <- paste0(Rfile, ".failing")
      message("Renaming failing test ", Rfile, " to ", failname)
      file.rename(Rfile, failname)
    }
  )
}
