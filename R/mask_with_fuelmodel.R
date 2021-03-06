#' @title mask_with_fuelmodel
#'
#' @description This function masks a Raster* object using JRC's fuelmodel.
#'
#' @param x Raster* to mask
#'
#' @details In absence of vegetation the risk of ignition reduces considerably,
#' regardless of the state of the soil. These areas are mapped in the JRC's
#' fuelmodel. This package contains a cached version of this map. This is stored
#' in the 'inst/extdata' folder of the package. For evaluating fire danger we
#' use this map to mask deserts, glaciers, urban areas, etc.
#' These areas have codes > 20.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   xmasked <- mask_with_fuelmodel(x)
#' }
#'

mask_with_fuelmodel <- function(x){

  # Load JRC fuelmodel map (longitudes in range [0, 360])
  fuelmodel_file_path <- system.file(file.path("extdata",
                                             "clim_fuelmodel.nc"),
                                   package = "caliver")

  # Get extent of the raster* object
  ext <- raster::extent(x)

  # Transform map to raster and rotate longitudes to the range
  # [-180, +180], if x's extent is in this range
  if (round(ext[1], 0) == -180 & round(ext[2], 0) == +180) {

    fuelmodel <- raster::rotate(raster::raster(fuelmodel_file_path))

  } else {

    fuelmodel <- raster::raster(fuelmodel_file_path)

  }

  # Remove areas with code > 20 (deserts, glaciers, urban areas, etc.)
  fuelmodel[fuelmodel > 20] <- NA

  # Fuel and x should have same extent and numer of rows/cols
  fuel <- raster::resample(fuelmodel, x, method = "ngb")

  # Finaly, mask x
  xmasked <- raster::mask(x, fuel, progress = "text")

  return(xmasked)

}
