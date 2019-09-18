#' @importFrom utils read.csv read.delim

read_file <- function(file){
  if(!grepl(".csv$|.tsv$", file)){
    stop("Uploaded file must be a .csv or .tsv file!")
  } else if(grepl(".csv", file)){
    read.csv(file, header = TRUE, row.names = 1)
  } else if (grepl(".tsv", file)){
    read.delim(file, header = TRUE, row.names = 1)
  }
}