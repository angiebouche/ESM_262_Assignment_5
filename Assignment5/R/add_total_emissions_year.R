##Summarize: Add up total emisisons by year
#'
#' compute net present value
#' @param data_ng is the data frame with all of the CO2 emissions
#' @return value in tons of CO2

add_total_emissions_y = function(data_em_year) {

  annual_emissions = data_em_year %>%
    group_by(Year) %>%
    summarize(sum_col = sum(Total_CO2_Emissions)) %>%
    arrange(-Year) %>%
    head(10)

  x = (data_em_year = data)


  return(result)
}


