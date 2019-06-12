#' compute net present value
#' @param emissions_year is the data frame with all of the CO2 emissions from natural gas
#' @return cost of emissions in dollars
#' @author Joslyn Fritz and Angie Bouche
#' @example use example dataset created called 'emissions year'

emissions_year = array(1:40, dim=c(5,4,2), #fill array with numbers 1-40 FAKE DATA
                dimnames = list(c('Transportation', 'Electricity_Generation', 'Residential', 'Commercial',  'Industrial'),
              c('Diesel', 'Gasoline', 'Coal', 'Natural Gas'),
              c(2010,2016))) # add column names
              emissions_year 

#each ton is taxed $1,000 - econ cost for emissions for each sector 
calculate_cost = function(emissions_year) {
  
  cost = emissions_year %>% 
  apply(emissions_year, c(1), sum)*100
  return(cost)
  
}

