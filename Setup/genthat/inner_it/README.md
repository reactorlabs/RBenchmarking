# Determine how many inner iterations each benchmark should have

## Usage

```
Rscript min_nb_iter.R "../../../Benchmarks/genthat-CRAN" > genthat_n_iter.csv
```

Will generate the file genthat_n_iter.csv containing on each line a test name, and the number of hot iterations of that test necessary to reach a minimum running time (here: 200ms).

Thile will be used when generating the rebench.conf file.

Note: it would make sense to run it with Rsh instead of R, but it much slower!
