#### Preamble ####
# Purpose: Downloads and saves the data from Spotify
# Author: Yanzun Jiang
# Date: 10 October 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(spotifyr)
library(tidyverse)


#### Download data ####
david_tao <- get_artist_audio_features("David Tao")


#### Save data ####
saveRDS(david_tao, "data/raw_data/david_tao.rds")
