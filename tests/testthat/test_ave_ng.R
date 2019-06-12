test_that("Average natural gas emissions are numerical", {
  data(ghg)
  expect_is(average_ng_cco(ghg_data = ghg), "numeric")
})
