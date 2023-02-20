\name{marriage.graph}
\alias{marriage.graph}
\title{Data on doges' matrimonial links}
\usage{
all.matrimonial.links <- marriage.graph()
}
\description{
Esxtract matrimonial links as an `igraph` object \code{family.types}; it includes doges' marriages, as well as their fathers', when available.
}

\value{
The result of calling the function is an unfiltered igraph object, which you can use to plot the doges social network. Nodes are families, or "casate", and links indicate a wedding has taken place between the two families.
}



\examples{
library(dogesr)
all.matrimonial.links <- marriage.graph()

# All families linked to the Contarinis
incident(all.matrimonial.links,as.numeric(V(all.matrimonial.links)["Contarini"]))
}
