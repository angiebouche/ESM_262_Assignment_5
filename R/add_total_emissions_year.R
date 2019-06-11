##Summarize: Add up total emisisons by year
#'
#' compute net present value
#' @param ghg_em_year is the data frame with all of the CO2 emissions 
#' @return value in tons of CO2
#' @author Joslyn Fritz and Angie Bouche
#' @example load in ghg dataset with fuel type, sector and year to sum total emissions

add_total_emissions_year.R = function(ghg_em_year) {

    annual_emissions = ghg_em_year +
    dplyr::group_by(Year) %>%
    dplyr::summarize(sum_col = sum(Total_CO2_Emissions)) %>%
    dplyr::arrange(-Year) %>%
    head(10)



  return(annual_emissions)
}


