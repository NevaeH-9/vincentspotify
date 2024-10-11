#### Preamble ####
# Purpose: Downloads and saves the data from spotify
# Author: Yuanchen Miao
# Date: 10 October 2024
# Contact: vincent.miao@mail.utoronto.ca
# License: none
# Pre-requisites: none
# Any other information needed? none

# Work space set up
library("spotifyr")
library("devtools")

# Get the data of the singer we are interested
pitbull <- get_artist_audio_features("pitbull")

# save data in the folder
saveRDS(pitbull, "data/pitbull.rds")
