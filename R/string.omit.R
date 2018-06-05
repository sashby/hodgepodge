#' A Function to Remove Columns with Strings
#'
#' This function allows you to remove all columns with class "character"
#' @param ds The dataframe from which you want to remove all variables that are characters
#' @keywords string omit, omit
#' @export
#' @examples string.omit(x)
#' string.omit()

string.omit <- function(ds){
  class <- sapply(ds, class)
  string_cols <-  ds[, class == "character"]
  no_strings <- ds[,class != "character"]
  
  return(no_strings)
    
}