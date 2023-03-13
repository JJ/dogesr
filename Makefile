all: data/doges.rda data/families.rda  data/doges.marriages.rda

data/doges.rda data/doges.marriages.rda: data-raw/venice-doges.csv
	script/Rda-from-csv.R

data/families.rda: data-raw/family-types.csv
	script/Rda-from-csv-families.R
