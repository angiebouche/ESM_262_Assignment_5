test_that("Test that the average natural gas emissions in 2016 were 165.85", {
  data(ghg)
  ghg_2016 <- ghg %>% 
    dplyr::filter(Year == 2016)
  expect_true(average_ng(ghg_data = ghg_2016) > 165)
})


