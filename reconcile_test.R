# reconciliation test for Europeana

library(httr)
library(data.table)
library(stringr)
library(dplyr)
library(splitstackshape)
library(janitor)
library(stringi)
library(naniar)
library(purrr)
library(readr)
library(stringdist)
library(lubridate)



# fuzzy name matching:

# get RKD names
data_rkd <- read.csv(url("https://api.linkeddata.cultureelerfgoed.nl/queries/ruben-schalk/rkd-names/run.csv?page=1&pageSize=10000"))
page = 1 # counts how many pages you queried so far
cont = TRUE # tells the loop to continue
while(cont && page < 100){ # prevents an endless loop; adjust the maximum number of pages based on your rce_data's size.
  page = page+1
  n1 = nrow(data_rkd) # how many rows existed before
  data <- rbind(data_rkd, read.csv(url(sprintf("https://api.linkeddata.cultureelerfgoed.nl/queries/ruben-schalk/rkd-names/run.csv?page=%i&pageSize=10000", page)))) # queries the next page
  n2 = nrow(data_rkd) # how many rows exist after
  cont = (n2 - n1) == 10000 # checks whether the next query will pick any more rows; if not, the loop stops
  print(page) # if you want to follow what's going on
}

#fwrite(data_rkd, "C:\\Users\\Ruben\\Documents\\05. RCE\\Europeana\\rkd_names.csv", sep = ";")

#paste all names
setDT(data_rkd)
part1 <- data_rkd[, list(artist, name1)]
part2 <- data_rkd[, list(artist, name2)]

setnames(part1, "name1", "name")
setnames(part2, "name2", "name")


data_rkd <- rbind(part1, part2)

setDT(data_rkd)
data_rkd <- data_rkd[!duplicated(data_rkd),]

# get RCE art names
 
 data_rce <- read.csv(url("https://api.linkeddata.cultureelerfgoed.nl/queries/ruben-schalk/rce-art-names/run.csv?page=1&pageSize=10000"))
 page = 1 # counts how many pages you queried so far
 cont = TRUE # tells the loop to continue
 while(cont && page < 100){ # prevents an endless loop; adjust the maximum number of pages based on your rce_data's size.
   page = page+1
   n1 = nrow(data_rce) # how many rows existed before
   data <- rbind(data_rce, read.csv(url(sprintf("https://api.linkeddata.cultureelerfgoed.nl/queries/ruben-schalk/rce-art-names/run.csv?page=%i&pageSize=10000", page)))) # queries the next page
   n2 = nrow(data_rce) # how many rows exist after
   cont = (n2 - n1) == 10000 # checks whether the next query will pick any more rows; if not, the loop stops
   print(page) # if you want to follow what's going on
 }

 
#fwrite(data_rce, "C:\\Users\\Ruben\\Documents\\05. RCE\\Europeana\\rce_art_names.csv", sep = ";")

