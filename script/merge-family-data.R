#!/usr/bin/env Rscript

library(dplyr)

family.types.data <- read.csv("data-raw/family-types.csv")

family.accession.date <- read.csv("data-raw/family-accession-date.csv")

# Family.name should be changed all lower case except for the first letter
family.accession.date$Family <- sapply(family.accession.date$Family.Name, function(x) {
  x <- tolower(x)
  substr(x,1,1) <- toupper(substr(x,1,1))
  return(x)
})

# for every Family in family.types.data, get the Initial.Date.of.Admission from family.accession.date. Take into account that not all families in family.types.data have an entry in family.accession.date
# Add a new column Initial.Date.of.Admission to family.types.data

family.types.data$Initial.Date.of.Admission <- sapply(family.types.data$Family, function(x) {
  date <- family.accession.date$Initial.Date.of.Admission[ family.accession.date$Family == x ]
  if (length(date) == 0) {
    return(NA)
  } else {
    return(date)
  }
})

save(family.types.data, file="data/family-types-date.rda")

