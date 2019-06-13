#' Cost: compute cost of CO2 emissions by sector if each ton is taxed at $1000
#' 
#' @param emissions_year is the arrary with all of the CO2 emissions from 4 fuels in 5 sectors in 2010 and 2016
#' @return cost of emissions in dollars
#' @author Joslyn Fritz and Angie Bouche
#' @example use example dataset created called 'emissions year'
#' @export
{emissions_year = array(1:40, dim=c(5,4,2), #fill array with numbers 1-40 FAKE DATA
                dimnames = list(c('Transportation', 'Electricity_Generation', 'Residential', 'Commercial',  'Industrial'),
              c('Diesel', 'Gasoline', 'Coal', 'Natural Gas'),
              c(2010,2016))) # add column names
              emissions_year }

#each ton is taxed $1,000 - econ cost for emissions for each sector 
calculate_cost = function(emissions_year) {
  
  cost = emissions_year %>% 
  apply(emissions_year, c(1), sum)*1000
  return(cost)
  
}

