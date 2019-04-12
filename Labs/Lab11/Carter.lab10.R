treedata <- read.csv("~/Downloads/GlobalWoodDensityDatabase.csv")

#Problem 4a
# which(is.na()) is a dumb function that looks for an NA in your data frame and tells you the row number where you will find the NA. You have to give it the column or columns you want it to look in. 
Data2 <- which(is.na(treedata$Wood.density..g.cm.3...oven.dry.mass.fresh.volume))
# In this line of code you are deleting the row that Data2 is associated with within the treedata file. myData <- myData[-c(blah, blah, blah), ]
treedata <- treedata[-Data2, ]

#Problem 5
library(ggplot2)
library(dbplyr)
library(tidyverse)

treedata2 <- summarise(group_by(treedata, Family, Binomial),
                       treedensity = mean(Wood.density..g.cm.3...oven.dry.mass.fresh.volume)) 

#Problem 6a

treedata3 <- summarise(group_by(treedata2, Family),
                       treedensity2 = mean(treedensity)) 
show(treedata3) 

#Problem 6b
FilteredTreebydensity <- arrange(treedata3, treedensity2)


#Problem 6c
Lowest_average_density <- head (FilteredTreebydensity, n = 8)
Highest_average_density <- tail(FilteredTreebydensity, n = 8 )


#Problem 7
# I like filter(), It says " look IN this dataframe at this column and find the simliar columns in THIS data frame and pull all of that information out.
Lowest_newdata <- filter(treedata2, Family %in% Lowest_average_density$Family)
Highest_newdata <- filter(treedata2, Family %in% Highest_average_density$Family)


ggplot(Lowest_newdata, aes( y= treedensity, x = )) + geom_boxplot() + 
  facet_wrap(vars(Family), nrow = 2, ncol = 4) 

ggplot(Highest_newdata, aes( y = treedensity, x = )) + geom_boxplot() + 
  facet_wrap(vars(Family), nrow = 2, ncol = 4)


#Problem 8
#coord_flip() literally flips the x and y coordinates 
ggplot(Lowest_newdata, aes( y= treedensity, x = Family)) + geom_boxplot() + 
  coord_flip()

ggplot(Highest_newdata, aes( y = treedensity, x = Family)) + geom_boxplot() + 
  coord_flip()




