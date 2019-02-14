context("get_gfed4")

test_that("Check get_gfed4 behaves as expected", {

  # Basis regions: only BONA region
  bona <- get_gfed4(varname = "BasisRegions", region = "BONA", verbose = TRUE)
  expect_true("SpatialPolygonsDataFrame" %in% class(bona))
  expect_true(bona@bbox[[1]] == -178.25)
  expect_true(bona@bbox[[2]] == 42)
  expect_true(bona@bbox[[3]] == -52.5)
  expect_true(bona@bbox[[4]] == 80)

  # Daily burned areas
  daily_burned_areas <- get_gfed4(start_date = "2003-01-01",
                                  end_date = "2003-01-02",
                                  temporal_resolution = "daily",
                                  varname = "BurnedArea")
  expect_equal(round(max(daily_burned_areas[]), 0), 14384)

})