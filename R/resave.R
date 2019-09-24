#' resave
#'
#' This is a wrapper to `save()` to append obejcts to existing .RData file. 
#' https://stackoverflow.com/questions/11813096/updating-an-existing-rdata-file
#' @param ... A list of vectors separated by coma(,)
#' @param list A charater vector list
#' @param file An existing .RData file on which append will be done.
#' @export
resave <- function(..., list = character(), file) {
  previous  <- load(file)
  var.names <- c(list, as.character(substitute(list(...)))[-1L])
  for (var in var.names) assign(var, get(var, envir = parent.frame()))
  save(list = unique(c(previous, var.names)), file = file)
}
