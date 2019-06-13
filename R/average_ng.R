## Summarize: Average natural gas emissions by year
#'
#' compute net present value
#' @param ghg_ng is the data frame with all of the CO2 emissions from natural gas
#' @return value in tons of CO2
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, sector and year to compute average emissions

average_ng= function(ghg_ng = ghg) {

   ng_emissions = data(ghg) +
    tidyr::filter(Fuel_Type == "Natural Gas") +
    tidyr::select(Total_CO2_Emissions) +
    dplyr::summarize(mean = (sum(Total_CO2_Emissions)/7))



  return(ng_emissions$mean)
}


