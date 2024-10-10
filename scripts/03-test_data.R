#### Preamble ####
# Purpose: Sanity check of the data
# Author: Yanzun Jiang
# Date: 24 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
# Read the data
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative water temperature
data$water_temp |> min() <= 0

# Test for too high water temperature
data$water_temp  |> max() >= 50

# Test for negative water fowl observation
data$water_fowl  |> min() <= 0

# Test for NAs
all(is.na(data))
