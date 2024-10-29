library(testthat)

test_that("TU_convertion removes all T's from the output", {
  input_sequence <- "ATTGCTTACG"
  converted_sequence <- TU_convertion(input_sequence)
  expect_false(grepl("T", converted_sequence), info = "T's found in the converted sequence")
})
