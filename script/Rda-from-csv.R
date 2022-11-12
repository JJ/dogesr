#!/usr/bin/env Rscript

data.doges <- read.csv("data-raw/venice-doges.csv")
data.doges$Years <- data.doges$End - data.doges$Start
data.doges$Century <- data.doges$Century +1
save(data.doges, file="data/doges.rda")
