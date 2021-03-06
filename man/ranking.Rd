% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ranking.R
\name{ranking}
\alias{ranking}
\title{ranking}
\usage{
ranking(r, clima)
}
\arguments{
\item{r}{is the Raster layer to compare to the climatology.}

\item{clima}{RasterBrick containing the climatological information.}
}
\description{
The ranking is applied to a forecast map \code{r} and provides
percentiles of occurrence of the values based on a given climatology
(see \code{clima}).
}
\details{
More information on ranking is available here:
https://bit.ly/2Qvekz4. You can find fire climatology data for the FWI
indices in Zenodo: https://zenodo.org/communities/wildfire.
}
\examples{
\dontrun{
  r <- brick("cfwis_ffwi_20170101_1200_00.nc")[[1]]
  clima <- brick("fwi.nc")
  x <- ranking(r, clima)
}

}
