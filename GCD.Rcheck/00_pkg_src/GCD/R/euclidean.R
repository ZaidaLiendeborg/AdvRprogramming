#' Greatest Common Divisor
#' 
#' Takes the GCD of two numbers by using Euclidean algortihm. See \href{https://en.wikipedia.org/wiki/Euclidean_algorithm}{Wikipedia}
#' @param a is a numeric scalar or integer.
#' @param b is a numeric scalar or integer.
#' @return The greates common divisor of a and b.
#' @export

euclidean<- function(a,b){
  if ((is.numeric(a)) | (is.numeric(b)) | (a%%1==0) | (b%%1==0)){
    while (b != 0){
      r<- b
      b<- a %% b
      a<- r
    }
    return(a)
  }
  else{
    stop("Erroneous inputs: Inputs must be an integer or numeric scalar.")
  }
}
