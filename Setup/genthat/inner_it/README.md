# Determine how many inner iterations each benchmark should have

## Usage

```
PATH="PATH_TO_Rsh_bin:$PATH" Rscript min_nb_iter.R "../../../Benchmarks/genthat-CRAN" > genthat_n_iter.csv
```

Will generate the file genthat_n_iter.csv containing on each line a test name, and the number of hot iterations of that test necessary to reach a minimum running time (here: 200ms).

Thile will be used when generating the rebench.conf file.
