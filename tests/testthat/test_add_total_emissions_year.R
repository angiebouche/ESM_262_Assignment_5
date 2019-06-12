test_that("Data from 2019 is not included", {
  expect_false(add_total_emissions_year(ghg_data = ghg)(Year="2019"))
})