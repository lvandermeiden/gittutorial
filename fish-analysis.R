library(tidyverse)
fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")
source("R/themes.R")

head(fishData)

fishData %>% 
  mutate(length_cat = case_when(length>=300 ~ "big", length<300 ~ "small")) -> fishData

ggplot()+
  geom_histogram(data=fishData, aes(x=scalelength, fill=length_cat))+
  facet_wrap(~length_cat)+
  theme_presentation()
