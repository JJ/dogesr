data("doges")
doges.years <- function() {
  data.doges.years <- data.doges
  data.doges.years$Doge.raw <- NULL
  data.doges.years$Dogaressa.raw <- NULL
  data.doges.years$Family.dogaressa <- NULL
  return(data.doges.years)
}
