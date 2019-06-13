test_that("Average natural gas emissions are numerical", {
  data(ghg)
  expect_is(average_ng(data_ng = ghg), "numeric")
})

