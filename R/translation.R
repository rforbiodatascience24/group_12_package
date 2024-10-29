#' Translation
#'
#' @param codons codon sequence
#'
#' @return amino acid sequence
#' @export
#'
#'
translation <- function(codons){
  amino_acid <- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}
