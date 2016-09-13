# 1.1.1 Euclidean algorithm #

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
