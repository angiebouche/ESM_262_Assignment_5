## Summarize: Average natural gas emissions by year
#'
#' compute net present value
#' @param data_ng is the data frame with all of the CO2 emissions
#' @return value in tons of CO2

average_ng = function(data_ng) {

   ng_emissions = data_ng %>%
    filter(Fuel_Type == "Natural Gas") %>%
    select(Total_CO2_Emissions) %>%
    summarize(mean = (sum(Total_CO2_Emissions)/7))



  return(ng_emissions$mean)
}


