#' @title Summarize: Average natural gas emissions by year
#'
#' @param ghg is the data frame with all of the CO2 emissions from natural gas
#' @return value in tons of CO2
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, sector and year to compute average emissions
#' @export
average_ng= function(ghg_data) {

   ng_emissions = ghg_data %>% 
    dplyr::filter(Fuel_Type == "Natural Gas") %>% 
    dplyr::select(Total_CO2_Emissions) %>% 
    dplyr::summarize(mean = (sum(Total_CO2_Emissions)/7))



  return(ng_emissions$mean)
}

ng_emissions <- average_ng(ghg_data=ghg)



