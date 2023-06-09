library(igraph)

orso <- "Orso"
manin <- "Ludovico Manin"

test_that("'to' slices work", {
  to.doge <- "Pietro IV Candiano"
  this.marriage.graph <- marriage.graph.slice(to=to.doge)
  expect_type(this.marriage.graph,"list")
  expect_equal(V(this.marriage.graph)[orso]$name,orso)
  expect_equal(V(this.marriage.graph)[to.doge]$name,to.doge)
})


test_that("'from' slices work", {
  from.doge <- "Pietro IV Candiano"
  this.marriage.graph <- marriage.graph.slice(from=from.doge)
  expect_type(this.marriage.graph,"list")
  expect_equal(V(this.marriage.graph)[manin]$name,manin)
  expect_equal(V(this.marriage.graph)[from.doge]$name,from.doge)
})

test_that("full slices work", {
  from.doge <- "Pietro IV Candiano"
  to.doge <- "Francesco Erizzo"
  this.marriage.graph <- marriage.graph.slice(from=from.doge,to=to.doge)
  expect_type(this.marriage.graph,"list")
  expect_equal(V(this.marriage.graph)[from.doge]$name,from.doge)
  expect_equal(V(this.marriage.graph)[to.doge]$name,to.doge)
})

