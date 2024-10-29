# Load testthat library for testing functions
library(testthat)

test_that("triplicate splits sequence into codons correctly", {
  # Basic test
  expect_equal(triplicate("ATGCGATAA"), c("ATG", "CGA", "TAA"))

  # Test with custom start position
  expect_equal(triplicate("ATGCGATAA", start = 2), c("TGC", "GAT"))
})
