library(igraph)

globalVariables(c("data.doges"))

#' Convert doges data into a social graph
#'
#' @return A graph with noble families as nodes, edges representing marriages of doges or parents; the type of family is the attribute family.type
#' @export
#'
#

marriage.graph.slice <- function(..., from="Orso",to="Ludovico Manin") {
  from.index <- which(data.doges$Doge == from )[1]
  to.values <- which(data.doges$Doge == to )
  to.index <- to.values[length(to.values)]
  sliced <- data.doges[from.index:to.index,]
  return(graph.data.frame(sliced,directed=F))
}
