% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset_datacube.R
\name{subset_datacube}
\alias{subset_datacube}
\title{subset_datacube}
\usage{
subset_datacube(r, from, to)
}
\arguments{
\item{r}{is the Raster layer to compare to the climatology.}

\item{from}{string, starting date (e.g. "2018-12-30").}

\item{to}{string, ending date (e.g. "2018-12-31").}
}
\description{
This function subsets a datacube (RasterStack or RasterBrick)
based on dates.
}
\details{
If the \code{from} and \code{to} strings are in the format
"YYYY-MM-DD", they are automatically converted into a date.
}
\examples{
\dontrun{
  r <- brick("fwi.nc")
  x <- subset_datacube(r,
                       from = "2017-12-30",
                       to = "2017-12-31")
}

}
