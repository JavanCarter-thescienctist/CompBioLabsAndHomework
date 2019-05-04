
library(ggplot2)
library(ggmap)
library(rgdal)
library(dplyr)

#Upload Dr.Safran's Whole Genome GPS data. Personal data so do not share with other sources without permission.
Whole_Genome_data <- read.csv(file.choose())

#creating a file that has all of the unique characters from the dataset
Org_names <- unique(Whole_Genome_data$zone, incomparables = FALSE, MARGIN= FALSE, fromLast = FALSE)

Org_names



#This code gets a stamenmap tiles based off of your specifications and puts them together. You can do different types of maps other than terrain but because of the biological inference associated with the project, I figured that the terrain map was the most appropriate.
myMap<- get_stamenmap(bbox = c(left = 80.80204, bottom = 20.38048, right = 130.92313, top = 60.14344), zoom = 6, maptype = c("terrain"), crop = TRUE, messaging = FALSE, urlonly = FALSE, force = FALSE)
# the ggmap function will allow the map to be visualized using a ggplot like format 
myMap <- ggmap(myMap)
# view
myMap


##### Mongolia and China
myMapPlotEast <- myMap
#this code uses geom_point to plot the specified data to your map of choice and group the plots by color. In this situation, it is plotting based on the unique species/ hybrids in the data set. 
myMapPlotEast <- myMapPlotEast + geom_point(data= Whole_Genome_data, aes(x=Whole_Genome_data$long, y=Whole_Genome_data$lat, size = 5, colour = zone ))

## This code changes the label of the x and y axis
myMapPlotEast <- myMapPlotEast + ggtitle("Hirundo Subspecies/Hybrid Eastern Geographic Mapping") +
  xlab("Longitude") + ylab("Latitude")

## This code changes the name or title of the legend. 
myMapPlotEast <- myMapPlotEast + scale_colour_discrete(name ="Subspecies/Hybrids")
myMapPlotEast

#Please press zoom to see better detailed plot


##### Egypt, Israel, and Morrocco

myMap2<- get_stamenmap(bbox = c(left = -15.000, bottom = 20.0000, right = 50.000, top = 50.000), zoom = 6, maptype = c("terrain"), crop = TRUE, messaging = FALSE, urlonly = FALSE, force = FALSE)

myMap2 <- ggmap(myMap2)

myMap2

myMapPlotMed <- myMap2

myMapPlotMed <- myMapPlotMed + geom_point(data= Whole_Genome_data, aes(x=Whole_Genome_data$long, y=Whole_Genome_data$lat, size = 1, colour = zone ))

## This code changes the label of the x and y axis
myMapPlotMed <- myMapPlotMed + ggtitle("Hirundo Subspecies/Hybrid Geographic MediterraineanMapping") +
  xlab("Longitude") + ylab("Latitude")

## This code changes the name or title of the legend. 
myMapPlotMed <- myMapPlotMed + scale_colour_discrete(name ="Subspecies/Hybrids")
myMapPlotMed

##### World Map 
myMap3 <- get_stamenmap(bbox = c(left = -130.000, bottom = 0.000, right = 150.000, top = 60.000), zoom = 5, maptype = c("terrain"), crop = TRUE, messaging = FALSE, urlonly = FALSE, force = FALSE)
#This extends the map to a larger more full format
myMap3 <- ggmap(myMap3, extent = "normal")
myMap3

myMap3 <- myMap3 + geom_point(data= Whole_Genome_data, aes(x=Whole_Genome_data$long, y=Whole_Genome_data$lat, size = 2, colour = Whole_Genome_data$zone))
  
  myMapPlotWorld <- myMap3
  
  myMapPlotWorld <- myMapPlotWorld + ggtitle("Hirundo Subspecies/Hybrid World Geographic Mapping") +
  xlab("Longitude") + ylab("Latitude") + labs(colour = "Subspecies/Hybrids")

  myMapPlotWorld <- myMapPlotWorld + theme(legend.position = "bottom")

  myMapPlotWorld

  #It may take a minute or two for the plots to appear if you ran all of the code at once.
  #Please press zoom to see better detailed plot
  
  
 myMapPlot
 myMapPlotMed
 myMapPlotWorld
  
 ######Hybrid mapping
 #looking for species in the main dataset
 Org_names <- unique(Whole_Genome_data$zone, incomparables = FALSE, MARGIN= FALSE, fromLast = FALSE)
 Org_names
 #After looking at the Org_names file I found the locations of the hybrids and put it in its own file
 Org_Hname <- Org_names[c(2,4,7)]
 #created an empty file
 Hybrid_data<- data.frame(Date=as.Date(character()),
               File=character(), 
               User=character(), 
               stringsAsFactors=FALSE)
#created a for loop to locate and fill the hybrid data file with only the hybrid data
 for (i in 1:3){
   
   Organism_GPS <- filter(Whole_Genome_data, zone == Org_Hname[i])
   print(Organism_GPS)
   
   Hybrid_data <- rbind(Hybrid_data, Organism_GPS)
  
 }
 Hybrid_data
 
 #replicated the same thing as before but for parental groups
 Org_Pname <- Org_names[c(1,3,5,6,8,9)]
 
Parental_data <- data.frame(Date=as.Date(character()),
               File=character(), 
               User=character(), 
               stringsAsFactors=FALSE)
 
for (i in 1:6){
  
  Organism_GPS <- filter(Whole_Genome_data, zone == Org_Pname[i])
  print(Organism_GPS)
  
  Parental_data <- rbind(Parental_data, Organism_GPS)
  
}
 
 Parental_data
 #plotting parental and hybrids so you can see the zones 
 myMapPlotHybrid <- myMap + geom_point(data= Parental_data, aes(x = Parental_data$long, y = Parental_data$lat, size = 5, colour = zone)) +
   geom_point(data = Hybrid_data, mapping= aes(x = Hybrid_data$long, y = Hybrid_data$lat, size = 5, shape= Hybrid_data$region))
                
 
 ## This code changes the label of the x and y axis
 myMapPlotHybrid <- myMapPlotHybrid + ggtitle("Hirundo Subspecies/Hybrid Geographic Mapping") + xlab("Longitude") + ylab("Latitude")
 
 ## This code changes the name or title of the legend. 
 myMapPlotHybrid <- myMapPlotHybrid + scale_colour_discrete(name ="Subspecies/Hybrids")
 
# The parental are colored and the hybrids are black. The colored dots are the parentals to the black dots they surround e.i. pink=tytleri, gold=gutturalis, black dot between them is tg which is their hybrid! 
myMapPlotHybrid

 
 

  
