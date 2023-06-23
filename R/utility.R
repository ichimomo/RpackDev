#'
#' add x to vector of 1:10
#'
#' This is created for trial of R package development
#'
#' @param x object to be added
#'
#'
#' @export
#'
#' @useDynLib myPackage, .registration=TRUE
#' @importFrom Rcpp sourceCpp
NULL
add10 <- function(x) {
  if(length(x) == 1) {
    return(x + 1:10)
  } else {
    stop("input data-type is only scalar\n")
  }
}

add20 <- function(x) {
  assertthat::assert_that(length(x),1)
  assertthat::assert_that(as.numeric(x),TRUE)
  return(x + 1:20)
}
