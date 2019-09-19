#' Plot Heatmap
#'
#' This is a wrapper function to \code{\link[pheatmap]{pheatmap}} taking a file instead of matrix
#' 
#' @param file Input a .csv or .tsv file
#' @param ... Further arguments to be passed to \code{\link[pheatmap]{pheatmap}}
#'
#' @return A heatmap
#'
#' @author Sangram Keshari Sahu
#' @keywords heatmap
#'
#' @examples
#' file <- system.file("extdata", "pasilla_gene_counts.csv", package = "sahu")
#' plotHeatmap(file, main='heatmap title')
#'
#' @importFrom pheatmap pheatmap
#' 
#' @export
plotHeatmap <- function(file, ...){
  df <- read_file(file)
  pheatmap::pheatmap(df, ...)
}
