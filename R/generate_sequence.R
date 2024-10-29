#' Generate a random DNA Seq of specified length
#'
#' @param sequence_length specify desired length
#'
#' @return a random DNA seq. of desired length
#' @export
#'
#' @examples generate_sequence(25)
generate_sequence <- function(sequence_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}
