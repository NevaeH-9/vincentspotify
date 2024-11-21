#### Preamble ####
# Purpose: Cleans the pitbull rds and only keeps the variables I need
# Author: Yuanchen Miao
# Date: 10 October 2024
# Contact: vincent.miao@mail.utoronto.ca
# License: none
# Pre-requisites: the raw rds data downloaded from spotify api
# Any other information needed? none

#### Workspace setup ####
library(tidyverse)

#### clean data ####
raw_rds <- readRDS("data/pitbull.rds")

cleaned_rds <- raw_rds[c("album_release_date", "danceability", "valence", "energy")]

#### save cleaned data ####
saveRDS(cleaned_rds, "data/cleaned_pitbull.rds")
