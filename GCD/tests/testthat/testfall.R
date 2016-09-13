test_that("euclidean",{
  expect_that(euclidean, is_a("function"),
              info = "False: euclidean is not a function.")
})