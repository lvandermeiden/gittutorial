library(tidyverse)

source("R/themes.R")

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")
head(fishData)

fishData %>% 
  mutate(length_cat = case_when(length>=300 ~ "big", length<300 ~ "small")) -> fishData

ggplot()+
  geom_histogram(data=fishData, aes(x=scalelength, fill=length_cat))+
  facet_wrap(~length_cat) +
  theme_presentation()


## Chris's modifications

ggplot() +
  geom_histogram(fishData = fish, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
