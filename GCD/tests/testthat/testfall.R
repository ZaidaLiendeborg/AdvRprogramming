test_that("euclidean",{
  expect_that(euclidean, is_a("function"),
              info = "False: euclidean is not a function.")
  expect_that(is.numeric(euclidean(a=100, b=10000)), condition=is_true(),
              info = "False: Euclidean does not return numeric output.")
})