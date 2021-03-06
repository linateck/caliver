% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ranking.R
\name{plot_ranking}
\alias{plot_ranking}
\title{plot_ranking}
\usage{
plot_ranking(ranking_map, custom_palette = NULL, ...)
}
\arguments{
\item{ranking_map}{is the Raster layer, result of \code{ranking()}.}

\item{custom_palette}{palette to use (default is \code{viridis::viridis})}

\item{...}{other plotting arguments, see \code{?raster::plot} function.}
}
\description{
Plot ranking map as shown in GWIS (\url{https://bit.ly/2BbBfsm})
}
\examples{
\dontrun{
  r <- brick("cfwis_ffwi_20170101_1200_00.nc")[[1]]
  clima <- brick("fwi.nc")
  ranking_map <- ranking(r, clima)
  # As shown in GWIS
  plot_ranking(ranking_map,
               custom_palette = c("green", "yellow", "salmon", "orange",
                                  "red", "black"))
}

}
