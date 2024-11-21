#### Preamble ####
# Purpose: Sanity check of the data
# Author: Yuanchen Miao
# Date: 10 October 2024
# Contact: vincent.miao@mail.utoronto.ca
# License: none
# Pre-requisites: need to have the cleaned data
# Any other information needed? none

#### workplace setup ####
library(tidyverse)

####read data####
data1 <- readRDS("data/cleaned_pitbull.rds")

####test if there is NA in the data####
all(is.na(data1$album_release_date))
all(is.na(data1$danceability))
all(is.na(data1$valence))
all(is.na(data1$energy))

####test if there is any zeros in the data####
data1$album_release_date |> min() <= 0
data1$danceability |> min() <= 0
data1$valence |> min() <= 0
data1$energy |> min() <= 0