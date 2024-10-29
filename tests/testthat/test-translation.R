library(testthat)

# Load testthat library
library(testthat)

# Define tests for the translation function
test_that("translation function works as expected", {

  # Test case 1: Single codon that translates to Methionine
  expect_equal(translation("AUG"), "M")

  # Test case 2: Multiple codons that translate to Methionine and Phenylalanine
  expect_equal(translation(c("AUG", "UUU")), "MF")

  # Test case 3: Multiple codons including a stop codon
  expect_equal(translation(c("AUG", "UUU", "UAA")), "MF_")

  # Test case 4: All stop codons should result in an empty string
  expect_equal(translation(c("UAA", "UGA", "UAG")), "___")
})
