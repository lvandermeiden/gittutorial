---
title: "18-10-2018_HomeworkTheme"
author: "Laura Vander Meiden"
date: "October 19, 2018"
output: html_document
---

```{r setup, include=FALSE}
.libPaths("C:/Users/Laura/Desktop/RLibrary")


knitr::opts_chunk$set(echo=T)
library(tidyverse)
library(extrafont)
loadfonts(device="win")
```

#Challenge Make two themes one for papers one for whatever you do for presentations

```{r cars}
theme_presentation <- function(color="grey39"){
  theme_classic(base_size=28, base_family="Times New Roman") %+replace%
    theme(
      plot.title=element_text(hjust=0, size=38, color = color),
      axis.ticks=element_line(color=color),
      axis.line=element_line(color=color),
      axis.text=element_text(color=color),
      axis.title=element_text(color=color),
      legend.text=element_text(color=color),
      legend.title = element_text(color=color),
      legend.direction="vertical",
      legend.position = "right",
      legend.box.background = element_rect(color=color),
      legend.background = element_blank(),
      panel.background =element_blank()
      #change stuff here
    )
}

ggplot()+
  geom_point(data=mpg, aes(x=cty, y=hwy, colour=factor(cyl)))+
  labs(title="This is my title")+
  theme_presentation()


theme_paper<- function(){
  theme_classic(base_size=20, base_family="Helvetica") %+replace%
    theme(
      plot.caption=element_text(hjust=0),
      axis.text=element_text(size=16),
      axis.title.x=element_text(size=18),
      axis.title.y=element_text(size=18, angle=90)
      
    )
}
      
ggplot()+
  geom_point(data=mpg, aes(x=cty, y=hwy, colour=factor(cyl)))+
  labs(caption="This is my caption")+
  theme_paper()
```

