#' @title Summarize: Add up total emisisons by year
#' 
#' @param ghg is the data frame with all of the CO2 emissions by sector, fuel type and year
#' @return value in tons of CO2
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, sector and year to sum total emissions
#' @export
add_total_emissions_year= function(ghg_data) {

    annual_emissions = ghg_data %>% 
    dplyr::group_by(Year) %>%
    dplyr::summarize(sum_col = sum(Total_CO2_Emissions)) %>%
    dplyr::arrange(-Year) %>%
    head(10)



  return(annual_emissions)
}

annual_emissions <- add_total_emissions_year(ghg_data = ghg)
