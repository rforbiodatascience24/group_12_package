#' count of amino acids and a plot
#'
#' @param amino_acid_sequence
#'
#' @return plot af amino acid count
#' @export
#'
#'
figures <- function(amino_acid_sequence){
  unique_amino_acids <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  # hmm tror at vi splitter aminosyre seq og finder unique..?
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()
# her tæller vi
  colnames(counts) <- c("Counts")
  counts[["amino_acid_sequence"]] <- rownames(counts)
# laver en col over vores aminosyrer og counts
  amino_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acid_sequence, y = Counts, fill = amino_acid_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")
# flot plot
  return(amino_plot)
}
