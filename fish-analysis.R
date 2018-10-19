library(tidyverse)
fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

head(fishData)

fishData %>% 
  mutate(length_cat = case_when(length>300 ~ "big", length<300 ~ "small")) -> fishData

