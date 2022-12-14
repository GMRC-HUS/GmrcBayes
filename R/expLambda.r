# expLambda.r
# written by JuG
# Oct 28 2022


#' Calculate Poisson expectation
#' @author JuG
#' @description calculate Poisson expectation
#' @param x vector of observation of the Poisson generative process
#' @details
#' @examples
#' set.seed(123)
#' x1 <- rpois(10, lambda = 3)
#' expLambda(x1)
#' @return estimated lambda value
#' @export

expLambda <- function(x){
  x <- as.integer(x)
  x<- x[!is.na(x)]
  n <- length(x)
  sumX <- sum(x)
  return((sumX+1)/(n+1))
}
