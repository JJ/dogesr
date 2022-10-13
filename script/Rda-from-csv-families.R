#!/usr/bin/env Rscript

family.types.data <- read.csv("data-raw/family-types.csv")
family.types <- family.types.data$Type
names(family.types) <- family.types.data$Family
save(family.types, file="data/families.rda")
