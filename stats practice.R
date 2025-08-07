#load libraries
library(GGally)
library(skimr)
library(palmerpenguins)
library(tidyverse)

#take a look at palmer penguins data
view(penguins)

#view the column names
names(penguins)
penguins
#check dimensions
dim(penguins)

#get a summary of the data
summary(penguins)

#get summary using skimr

skimr::skim(penguins)

#print first 6 rows
head(penguins)

#print last 6
tail(penguins)

#make a pair plot
GGally::ggpairs(penguins) 

# make a pair plot with a select number of columns by species
GGally::ggpairs(penguins,
                columns = 3:6,
                ggplot2::aes(color = species))

#maing a histogram of penguin flipper lengthS
ggplot(data = penguins, aes(x = flipper_length_mm, fill = species)) + geom_histogram()






