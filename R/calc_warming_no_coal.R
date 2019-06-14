#' @title Calculate the impact of CO2 as it increases the warming of the planet if we replaced coal with renewable energy sources (assume no emissions)
#'
#' @param ghg is the data frame with all of the CO2 emissions from all fuel types and industries
#' @return amount of planetary warming from CO2 emissions; for every 10 tons of CO2 emitted, the planet warms by 0.1 degrees Celsius.
#' @author Joslyn Fritz and Angie Bouche
#' @example  load in ghg dataset with fuel type, compute total emissions subtract coal emissions, then divide by 10 and multiply by 0.1 to figure out the planetary warming in Celcius from CO2 emissions. 
#' @export
calc_warming_no_coal = function(ghg_data) {
  
  less_emissions = ghg_data %>%
    dplyr::filter(Fuel_Type != "Coal") %>%
    dplyr::select(Total_CO2_Emissions) %>%
    dplyr::summarize(total =(sum(Total_CO2_Emissions)/10*.1))
  
  
  
  return(less_emissions)
}

less_emissions <- calc_warming_no_coal(ghg_data = ghg)
