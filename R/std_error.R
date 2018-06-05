#' A Standard Error Function
#'
#' This function allows you to examine the standard error of the mean.
#' @param x The data you want to estimate standard error. Can be a vector or a matrix
#' @keywords standard error, variability, descriptives
#' @export
#' @examples std_error(x)
#' std_error()

std_error <- function(x){
	
	std_err = pracma::std(x[!is.na(x)], flag = 0)/ sqrt(sum(!is.na(x)))
	
	return(std_err)
}


