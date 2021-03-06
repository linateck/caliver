% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{stack_netcdf_files}
\alias{stack_netcdf_files}
\title{stack_netcdf_files (DEPRECATED)}
\usage{
stack_netcdf_files(input_dir = NULL, varname = NULL, pattern = NULL,
  recursive = FALSE, output_file = NULL)
}
\arguments{
\item{input_dir}{is the directory where all the files to read are stored}

\item{varname}{name of the variable to extract}

\item{pattern}{regular expression pattern to select a subset of files}

\item{recursive}{logical (TRUE by default). If set to TRUE it looks in
folders and subfolders}

\item{output_file}{output filename (including path)}
}
\description{
This function merges all the netcdf files in a given directory
over the time dimension. It saves the merged file in the working directory.
}
\examples{
\dontrun{
  # Mergetime using single variable nc files
  stack_netcdf_files(input_dir = "/var/tmp/moc0/forestfire",
                     varname = NULL,
                     pattern = "geff_reanalysis_an_fwis_fwi_",
                     recursive = TRUE,
                     output_file = "outfile.nc")
}

}
