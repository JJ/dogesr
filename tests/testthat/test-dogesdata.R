data("doges")
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,11)
  expect_equal(nrow(data.doges),136)
})

test_that("doges have family names", {
  for ( doge in 1:nrow(data.doges)){
    expect_true(data.doges[doge,]$Family.doge != '')
  }
})

data("families")
data("family.colors")

test_that("All doges have family types and colors", {
  doge.type <- unname(unlist(family.types[data.doges$Family.doge]))
  doge.type.color <- unname(unlist(family.colors[doge.type]))
  expect_equal(length(doge.type), length(doge.type.color))
})
