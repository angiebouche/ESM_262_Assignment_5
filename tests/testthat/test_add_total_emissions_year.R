test_that("Data from 2019 is not included", {
  data(ghg)
  ghg_2019 <- ghg %>% 
    dplyr::filter(Year == 2019)
  expect_false(add_total_emissions_year(ghg_em_year = ghg_2019) > 0)
})

a = 1
b = 3

expect_that(a + b, equals(4))