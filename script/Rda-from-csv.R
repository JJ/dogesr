#!/usr/bin/env Rscript

data.doges <- read.csv("data-raw/venice-doges.csv")
save(data.doges, file="data/venice-doges.Rda")
