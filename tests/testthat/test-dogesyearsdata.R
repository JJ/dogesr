data.doges.years <- doges.years()
test_that("data doges years is loaded", {
  expect_vector(data.doges.years)
  expect_length(data.doges.years,6)
  expect_equal(nrow(data.doges.years),122)
})

test_that("There are no gaps in doges", {
  doges.years <- unique(data.frame(data.doges[,c("Doge","Start","End")]))
  for ( doge in 1:90){
    expect_equal(doges.years[doge,]$End, doges.years[doge+1,]$Start)
  }
})
