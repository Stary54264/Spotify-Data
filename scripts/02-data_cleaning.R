#### Preamble ####
# Purpose: Cleans the raw beach data into an analysis dataset
# Author: Yanzun Jiang
# Date: 24 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Clean data ####
# Read the data
raw_data <- read_csv("data/raw_data/raw_data.csv")

# Basic cleaning of the data
cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  rename(date = data_collection_date) |>
  select(date, air_temp, water_temp, water_fowl) |>
  filter_all(all_vars(!is.na(.))) |>
  separate(col = date,
           into = c("year", "month", "day"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, day, sep = "-"))
  )

# Get expected values and standard deviations
mean_air_temp <- mean(cleaned_data$air_temp)
sd_air_temp <- sd(cleaned_data$air_temp)
mean_water_temp <- mean(cleaned_data$water_temp)
sd_water_temp <- sd(cleaned_data$water_temp)
mean_water_fowl <- mean(cleaned_data$water_fowl)
sd_water_fowl <- sd(cleaned_data$water_fowl)

# Remove the outliers using z-scores
cleaned_data <-
  cleaned_data |>
  filter(abs((air_temp - mean_air_temp) / sd_air_temp) < 3,
         abs((water_temp - mean_water_temp) / sd_water_temp) < 3,
         abs((water_fowl - mean_water_fowl) / sd_water_fowl) < 3,
  )


#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
