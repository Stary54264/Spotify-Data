#### Preamble ####
# Purpose: Cleans the raw Spotify data into an analysis dataset
# Author: Yanzun Jiang
# Date: 10 October 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Clean data ####
# Read the data
raw_data <- as_tibble(readRDS("data/raw_data/david_tao.rds"))

# Basic cleaning of the data
cleaned_data <- raw_data |>
  mutate(album_release_date = ymd(album_release_date)) |>
  select(album_release_date, energy, valence, tempo)


#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
