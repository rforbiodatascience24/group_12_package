#' Creates codons from the nucleotide sequense
#'
#' @param nucleotide_seq nucleotide sequence inserted
#' @param start place that the function starts reading
#'
#' @return returns codons
#' @export
#'

triplicate <- function(nucleotide_seq, start = 1){
  nucleotide_length <- nchar(nucleotide_seq)
  codons <- substring(nucleotide_seq,
                      first = seq(from = start, to = nucleotide_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = nucleotide_length, by = 3))
  return(codons)
}
