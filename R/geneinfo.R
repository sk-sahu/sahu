#' Get Gene Info
#'
#' Perform lookups of Ensembl Identifiers and retrieve their 
#' external references in other databases using \href{http://rest.ensembl.org/documentation/info/xref_id}{xref_id-ENSEMBL API}
#' 
#' @param ensembl_id An Ensemble ID
#'
#' @return A dataframe with gene info details
#'
#' @examples
#' mygeneinfo <- getGeneinfo("ENSG00000157764")
#' head(mygeneinfo)
#' 
#' @import httr
#' @import jsonlite
#' @import xml2
#' 
#' @export
getGeneinfo <- function(ensembl_id){
  #ensembl_id<- "ENSG00000157764"
  server <- "http://rest.ensembl.org"
  ext <- paste("/xrefs/id/",ensembl_id,"?", sep = "")
  
  r <- httr::GET(paste(server, ext, sep = ""), content_type("application/json"))
  
  httr::stop_for_status(r)
  
  # use this if you get a simple nested list back, otherwise inspect its structure
  # head(data.frame(t(sapply(content(r),c))))
  fromJSON(toJSON(content(r)))
}
