DATA=data/doges.rda data/families.rda  data/doges.marriages.rda data/doges.years.rda ddata/oge.families.rda

all: $(DATA)

$(DATA): data-raw/venice-doges.csv data-raw/family-types.csv
	script/Rda-from-csv.R

