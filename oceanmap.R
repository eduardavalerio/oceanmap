# oceanmap: mapping oceanographic data 

install.packages('oceanmap')

library(oceanmap) 
?oceanmap::oceanmap

# plotmap function
# plotmap can produce a may by 5 different ways.
# 1. geographical coordinates (longitude and latitude),  
# 2. raster-object  
# 3. extent-object 
# 4. region-keyword 
# 5. add a land mask to an existing plot


# 5 different ways to produce a map with plotmap

#### Example 1: plot landmask of the Mediterranean Sea 
## a) by using longitude and latitude coordinates: 
lon <- c(-6, 37) 
lat <- c(30, 46) 
figure(width=9.75,height=5.28) 
plotmap(lon=lon , lat=lat , main="Mediterranean Sea") 
plotmap(xlim=lon , ylim=lat , main="Mediterranean Sea")

## b) plot landmask of the Mediterranean Sea by using an extent -object :  
library ('raster') 
ext <- extent(lon , lat) 
plotmap(ext , main="Mediterranean Sea") # extent -object  

## c) plot landmask of the Mediterranean Sea by using a raster -object: 
r <- raster(ext) 
plotmap(r, main="Mediterranean Sea") # raster -object  

## d) plot landmask of the Mediterranean Sea by using a region label: 
plotmap('WAO', main="Mediterranean Sea") # region -label 
# regions() ## check preinstalled region label  

## e) add landmask to an existing plot: 
plot(3.7008, 43.4079, xlim=lon , ylim=lat) 
plotmap(add=T) 
points(3.7008, 43.4079, pch=19)


########## TRYING WITH MY STUDY AREA ##############
lon <- c(-46, -44)
lat <- c(-24, -23)
figure(width=9.75,height=5.28) 
plotmap(lon=lon , lat=lat , main="North coast of the state of São Paulo") 
plotmap(xlim=lon , ylim=lat , main="North coast of the state of São Paulo")

# Subplots and some additional arguments of plotmap
