setwd("E:/R_dibya/LANDSAT_IMAGE")
library(raster)
library(ggplot2)
r = raster("keonjhar_dem.tif")
r = aggregate(r, fact = 2) 
asp=terrain(r,opt="aspect",unit="degrees")
asp_df=as.data.frame(asp,xy=T)
ggplot()+
  geom_tile(data=asp_df,aes(x=x,y=y,fill=aspect))+
  scale_fill_gradientn(colors=rainbow(10))+
  theme_bw()