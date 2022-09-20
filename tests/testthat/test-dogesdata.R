data("doges")
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,10)
  expect(nrow(data.doges),125)
})
data
