#Load the dataset
dat <- read.csv("~/Desktop/MIC-distributions.csv", head=TRUE)

library(tidyverse)
library(hrbrthemes)
library(viridis)
library(forcats)

# plot
ggplot(dat, aes(x=MIC, color=SPECIES, fill= SPECIES)) +
    geom_histogram(alpha=0.6, binwidth = 0.01) +
    scale_fill_viridis(discrete=TRUE) +
    scale_color_viridis(discrete=TRUE) +
    theme(
      legend.position="none",
      panel.spacing = unit(0.1, "lines"),
      strip.text.x = element_text(size = 8)
    ) + theme_bw()+
    xlab("MIC (ug/ml)") +
    ylab("Number of Isolates") +
    facet_wrap(~dat$DRUG)
    
# plotting adjusted MICs, max 8
ggplot(dat, aes(x=ADJUSTED_MIC, color=SPECIES, fill= SPECIES)) +
    geom_histogram(alpha=0.6, binwidth = 0.1) +
    scale_fill_viridis(discrete=TRUE) +
    scale_color_viridis(discrete=TRUE) +
    theme(
      legend.position="none",
      panel.spacing = unit(0.1, "lines"),
      strip.text.x = element_text(size = 8)
    ) + theme_bw()+
    xlab("MIC (ug/ml)") +
    ylab("Number of Isolates") +
    facet_wrap(~dat$DRUG)
