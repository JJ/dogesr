#!/usr/bin/env Rscript

data <- read.csv("data-raw/venice-doges.csv")
save(data, file="data/venice-doges.Rda")
