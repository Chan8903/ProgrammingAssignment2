## Computes the inverse. If the inverse has already been calculated (and the matrix has not changed),

## then the cachesolve should retrieve the inverse from the cach

cacheSolve <- function(x, ...) {
  
  i <- x$getinverse()
  
  if (!is.null(i)){
    #check to see if the inverse is in the cache if yes, then get it
    message("getting cached data")
    
    return(i)
    
  }
  
  data <- x$get() #inverse not in the cache, so calculate it
  
  i <- solve(data, ...)
  # solve function finds the inverse of a matrix
  x$setinverse(i)
  
  i
  
}
