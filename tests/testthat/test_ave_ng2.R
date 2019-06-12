test_that("Test that the average natural gas emissions in 2016 were 165.85", {
  expect_true(average_ng(ghg_data = ghg)(Year = "2016", sum_col = "165.85"))
})