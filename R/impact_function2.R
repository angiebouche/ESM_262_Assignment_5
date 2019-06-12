## Calculate the impact of CO2 as it increases the warming of the planet. 
#'
#' @param ghg_ng is the data frame with all of the CO2 emissions from all fuel types and industries
#' @return value in tons of CO2
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, sector and year to compute average emissions

average_ng_cco = function(ghg_data) {
  
  ng_emissions = ghg_data %>%
    dplyr::filter(Fuel_Type == "Natural Gas") %>%
    dplyr::select(Total_CO2_Emissions) %>%
    dplyr::summarize(mean = (sum(Total_CO2_Emissions)/7))
  
  
  
  return(ng_emissions$mean)
}


