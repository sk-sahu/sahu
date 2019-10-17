#' Plot 3D-PCA
#'
#' This function returns an 3D PCA plot
#' 
#' @param file Input a .csv or .tsv file
#'
#' @return a PCA-plot
#'
#' @author Sangram Keshari Sahu, \email{sangramsahu15@gmail.com}
#' @keywords pca-3d
#'
#' @examples
#' file <- system.file("extdata", "expr_matrix.csv", package = "sahu")
#' plotPCA3d(file)
#'
#' @importFrom stats prcomp
#' @importFrom scatterplot3d scatterplot3d
#' 
#' @export
plotPCA3d <- function(file){
  df <- read_file(file)
  pca_data <- prcomp(t(df))
  with(as.data.frame(pca_data$x), {
    s3d <- scatterplot3d(PC1, PC2, PC3, 
                         pch = 19, highlight.3d = TRUE ) 
    s3d_cord <- s3d$xyz.convert(PC1, PC2, PC3)
    text(s3d_cord$x, s3d_cord$y,             # x and y coordinates
         labels=row.names(pca_data$x),               # text to plot
         cex=.5, pos=4)
  });
}

