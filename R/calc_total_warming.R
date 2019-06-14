#' @title Calculate the impact of CO2 as it increases the warming of the planet. 
#'
#' @param ghg_data is the data frame with all of the CO2 emissions from all fuel types and industries
#' @return amount of planetary warming from CO2 emissions; for every 10 tons of CO2 emitted, the planet warms by 0.1 degrees Celsius. 
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, compute total emissions then divide by 10 and multiply by 0.1 to figure out the planetary warming from CO2 emissions. 
#' @export 
calc_total_warming = function(ghg_data) {
  
  global_warming= ghg_data %>%
    dplyr::select(Total_CO2_Emissions) %>%
    dplyr::summarize(total = (sum(Total_CO2_Emissions/10*0.1)))
  
  return(global_warming$total)
}

global_warming <- calc_total_warming(ghg_data = ghg)
