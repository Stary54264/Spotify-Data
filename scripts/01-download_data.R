#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Yanzun Jiang
# Date: 24 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# Get package
package <- show_package("toronto-beaches-observations")

# Get all resources for this package
resources <- list_package_resources("toronto-beaches-observations")

# Identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# Load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()


#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv")
