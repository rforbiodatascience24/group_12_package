library(testthat)
test_that("sequence length matches input", {
  seq <- generate_sequence(10)
  expect_equal(nchar(seq), 10)  # The length of the sequence should be 10
})

test_that("sequence contains only valid nucleotides", {
  seq <- generate_sequence(15)
  expect_true(all(strsplit(seq, "")[[1]] %in% c("A", "T", "G", "C")))  # All characters should be A, T, G, or C
})

test_that("different calls generate different sequences", {
  seq1 <- generate_sequence(20)
  seq2 <- generate_sequence(20)
  expect_false(seq1 == seq2)  # The sequences should not be the same (randomness test)
})
