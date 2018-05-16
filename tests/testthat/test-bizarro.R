context("test-bizarro.R")

test_that("letters in string reversed", {
  expect_equal(bizarro("abc"), "cba")
})

test_that("integers & doubles are negated", {
  expect_equal(bizarro(1L), -1L)
  expect_equal(bizarro(1), -1)
})

test_that("logicals are not-ted", {
  expect_equal(bizarro(c(TRUE, FALSE)), c(FALSE, TRUE))
})

test_that("dataframes get bizarro names and columns", {
  df <- data.frame(xyz = "abc", stringsAsFactors = FALSE)
  expect_equal(bizarro(df), data.frame(zyx = "cba", stringsAsFactors = FALSE))
})
