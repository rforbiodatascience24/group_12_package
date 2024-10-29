#' Transforming T to U's
#'
#' @param nucleotides Insert nucleotide sequence
#'
#' @return Return a new nucleotide sequence, where T has been substituted with U
#'
#'
#' @export
#'
#'
TU_convertion <- function(nucleotides){
  substitute <- gsub("T", "U", nucleotides)
  return(substitute)
}
