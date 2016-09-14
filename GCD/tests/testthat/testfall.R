test_that("euclidean",{
  a1<- 1234
  a2<- c(1:3)
  b1<- 5678
  b2<- "hej"
  expect_that(euclidean, is_a("function"),
              info = "Error: Euclidean is not a function.")
  expect_that(all(names(formals(euclidean)) %in% c("a", "b")), condition=is_true(),
              info = "Error: Erroneous arguments.")
  expect_that(is.numeric(euclidean(a=a1, b=b1)), condition=is_true(),
              info = "Error: Euclidean does not return numeric output.")
  expect_error(is.numeric(euclidean(a=a1, b=b2)), condition=is_true(),
              info = "Error: Euclidean does not return numeric output.")
  expect_equal(length(euclidean(a=a1, b=b1)), 1,
               info = "Error: Euclidean has wrong dimension.")
  expect_equal(euclidean(a=a1, b=b1), 2,
               info = "Error: Euclidean does not return the right value.")
  
})