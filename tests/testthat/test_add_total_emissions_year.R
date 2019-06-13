test_that("Data from 2019 is not included", {
data(ghg)
ghg_2019 <- ghg %>% 
dplyr::filter(year == 2019)
expect_false(add_total_emissions_year(ghg_data = ghg_2019) > 0)
})

