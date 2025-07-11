  <!-- badges: start -->
  [![Test package](https://github.com/JJ/dogesr/actions/workflows/R-stuff.yml/badge.svg)](https://github.com/JJ/dogesr/actions/workflows/R-stuff.yml)
    [![CRAN status](https://www.r-pkg.org/badges/version/dogesr)](https://CRAN.R-project.org/package=dogesr)
  <!-- badges: end -->

# dogesR

Also available from [CRAN as `dogesr`](https://cran.r-project.org/package=dogesr)
Package (with data) to work with the dogi and dogaresse of the
[Venetian republic](https://en.wikipedia.org/wiki/Republic_of_Venice)
and their relatives. Main intention is to analyze social networks
resulting from marriages and other interactions, but all kind of
useful data is (and will be) included in the package.

## Install

Install released versions (last one is 0.5.2) from CRAN as usual, or development
version from here

```R
library(devtools)
install_github("JJ/dogesr")
```

## Reference

It grew from the data used in [this
paper](https://arxiv.org/abs/2209.07334); please cite it if you are
using this module:

```
@misc{https://doi.org/10.48550/arxiv.2209.07334,
  doi = {10.48550/ARXIV.2209.07334},
  url = {https://arxiv.org/abs/2209.07334},
  author = {Merelo-Guervós, J. J.},
  keywords = {Social and Information Networks (cs.SI), Computers and Society (cs.CY), FOS: Computer and information sciences, FOS: Computer and information sciences},
  title = {What is a good doge? Analyzing the patrician social network of the Republic of Venice},
  publisher = {arXiv},
  year = {2022},
  copyright = {Creative Commons Attribution Share Alike 4.0 International}
}
```

You can retrieve this reference from the [bibliography
file](inst/doges.bib) along with other references used in examples.

## Examples

This package includes a few vignettes. Once installed, write
`vignette("dogesr")` to check what's available. Also

* `vignette("doges-family-types")` for how to use the family types data set
* `vignette("doges-terms")` to analyze the amount of time the doges lived/ruled using data provided in this package.
* `vignette("doges-social-network")` to get the marriage social network of doges and parents, and make some initial exploration.
* `vignette("doges-split-social-network")` to get the marriage social network of doges and parents for slices of time, from and to specific doges; this one shows how to get the social network before and after the Serrata.
* `vignette("counting-doge-families")` to work with a table of the families doges belonged to and how many times they actually "made doge".
* `vignette("doge-types")` to show the timeline of the different types of families that managed to "make doge".

## Work with data

Check available datasets with `data(package="dogesr")` once it has been loaded.

Data in its original format is stored in the
[`data-raw`](https://github.com/JJ/dogesr/tree/main/data-raw)
directory. If you change that data anyhow, type `make` to rebuild the
R data files (contained in the [`data`](data/) ) directory.

Any further change (columns and suchlike) will also require
modification of the documentation at the [`man`](man/) directory.

## Papers

Please check the
[`reports`](https://github.com/JJ/dogesr/tree/main/reports)
subdirectory for published papers that use this library, and their
sources, which is released under a free license.

## LICENSE

The contents of this repository are (c) JJ Merelo, 2022-2025, and are released
under the GPL 3 license. Please check the
[`LICENSE`](https://github.com/JJ/dogesr/blob/main/LICENSE) for details.
