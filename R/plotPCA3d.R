#' Plot 3D-PCA
#'
#' This function returns an 3D PCA plot
#' 
#' @param csvfile Input a CSV file 
#'
#' @return a PCA-plot
#'
#' @author Sangram Keshari Sahu, \email{sangramsahu15@gmail.com}
#' @keywords pca-3d
#'
#' @examples
#' file <- system.file("extdata", "transcript_count_matrix.csv", package = "sahu")
#' plotPCA3d(file)
#'
#' @importFrom stats prcomp
#' @importFrom utils read.csv
#' @importFrom scatterplot3d scatterplot3d
#' 
#' @export
plotPCA3d <- function(csvfile){
  
  if(!grepl(".csv$", csvfile)){
    stop("Uploaded file must be a .csv file!")
  }
  data <- read.csv(csvfile, header = TRUE, row.names = 1)

  pca_data <- prcomp(t(data))
  with(as.data.frame(pca_data$x), {
    s3d <- scatterplot3d(PC1, PC2, PC3, 
                         pch = 19, highlight.3d = TRUE ) 
    s3d_cord <- s3d$xyz.convert(PC1, PC2, PC3)
    text(s3d_cord$x, s3d_cord$y,             # x and y coordinates
         labels=row.names(pca_data$x),               # text to plot
         cex=.5, pos=4)
  });
}

