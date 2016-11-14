
<!-- Edit the README.Rmd only!!! The README.md is generated automatically from README.Rmd. -->
caliver: CALIbration and VERification of gridded model outputs
==============================================================

<!--

[![Travis-CI Build Status](https://travis-ci.org/anywhereProject/caliver.svg?branch=master)](https://travis-ci.org/anywhereProject/caliver)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/anywhereProject/caliver?branch=master&svg=true)](https://ci.appveyor.com/project/anywhereProject/caliver)
[![Coverage Status](https://img.shields.io/codecov/c/github/anywhereProject/caliver/master.svg)](https://codecov.io/github/anywhereProject/caliver?branch=master)

-->
The package [caliver](https://cran.r-project.org/package=caliver) contains utility functions for the post-processing, calibration and validation of gridded model outputs. Initial test cases include the outputs of the following forest fire models: GEFF and RISICO.

Dependencies and Installation
-----------------------------

Install [cdo](https://code.zmaw.de/projects/cdo/wiki) and the following packages before attempting to install caliver:

``` r
packs <- c('devtools', 'rgdal', 'sp', 'leaflet', 'testthat', 'knitr', 'rmarkdown')
new.packages <- packs[!(packs %in% installed.packages()[,'Package'])]
if(length(new.packages)) install.packages(new.packages)
```

Get the development version from github using [devtools](https://github.com/hadley/devtools):

``` r
devtools::install_github('anywhereProject/caliver')
```

Load the caliver package:

``` r
library('caliver')
```

Meta
----

-   This package and functions herein are part of an experimental open-source project. They are provided as is, without any guarantee.
-   Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
-   Please [report any issues or bugs](https://github.com/anywhereProject/caliver/issues).
-   License: [GPL-3](https://opensource.org/licenses/GPL-3.0)
-   Get citation information for `caliver` in R doing `citation(package = 'caliver')`
