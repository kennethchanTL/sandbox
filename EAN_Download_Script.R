## EAN (Expedia Affliate Network) Data Extraction
library(downloader)

## Set directory
dir <- '/Users/Kenneth_Chan/Documents/Data/Location/'

## Call EAN download list
dlist <- '/Users/Kenneth_Chan/Documents/Data/Location/EAN Download List'
dlist <- read.table(dlist, header = TRUE)

for (i in 1:nrow(dlist)) {
  url <- as.character(dlist[i,])
  download(url, dest="dataset.zip", mode="wb") # download zip file
  ext <- unzip ("dataset.zip", exdir = dir) # unzip
}
