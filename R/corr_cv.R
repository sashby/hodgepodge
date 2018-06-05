#' A Crossvalidated Correlation Function
#'
#' This function allows you to examine crossvalidated correlations for your data.
#' @param x The first variable you want to correlate.
#' @param y The second variable you want to correlate.
#' @keywords crossvalidated correlation, correlation
#' @export
#' @examples corr_cv(x,y)
#' corr_cv()

corr_cv <- function(x, y) {
  corval <- vector()
  
  for (i in 1:length(x)) {
    corval[i] <- cor(x[-i], y[-i], use = "pairwise.complete.obs")
  }
  
  mean_corr <- mean(corval)
  return(mean_corr)
}