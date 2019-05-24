library(tidyverse)
coast_vs_waste <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/coastal-population-vs-mismanaged-plastic.csv",col_types = "cccddd") %>% janitor::clean_names()
mismanaged_vs_gdp <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-mismanaged-plastic-waste-vs-gdp-per-capita.csv") %>% janitor::clean_names()
waste_vs_gdp <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-plastic-waste-vs-gdp-per-capita.csv") %>% janitor::clean_names()



#Showing percentage
coast_vs_waste %>% 
  tabyl(entity) %>% 
  adorn_totals(where = "row") %>% 
  adorn_percentages(denominator = "col") %>% 
  adorn_pct_formatting(digits = 3)


#Total on bottom row (entire dataset)
coast_vs_waste %>%
  tabyl(entity) %>% 
  adorn_totals(where = "row")




