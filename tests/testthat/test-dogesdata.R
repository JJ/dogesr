data("doges")
KNOWN_LENGTH <- 136
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,11)
  expect_equal(nrow(data.doges), KNOWN_LENGTH)
})

test_that("doges have family names", {
  for ( doge in 1:nrow(data.doges)){
    expect_true(data.doges[doge,]$Family.doge != '')
  }
})

data("families")
data("family.colors")

test_that("All doges have family types and colors", {
  doge.type <- unname(family.types[data.doges$Family.doge])
  expect_length(doge.type, KNOWN_LENGTH)
  doge.type.color <- unname(unlist(family.colors[doge.type]))
  expect_length(doge.type.color, KNOWN_LENGTH)
  expect_equal(length(doge.type), length(doge.type.color))
})
