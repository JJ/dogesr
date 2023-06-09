library(igraph)

globalVariables(c("doges.marriages.sn","family.types"))

#' Convert doges data into a social graph
#'
#' @return An graph with noble families as nodes, edges representing marriages of doges or parents
#' @export
#'
#

marriage.graph <- function() {
  V(doges.marriages.sn)$family.type <- sapply( V(doges.marriages.sn)$name, function(x) family.types[x] )
  return(doges.marriages.sn)
}
