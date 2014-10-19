## Put comments here that give an overall description of what your
## functions do

## R Programming Assignemnt #2 cache the inverse of a matrix
## for later retrieval

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL 
  #initialize the cache
  
  set <- function(y){
    
    x <<- y
    
    i <<- NULL 
    
  }
  
  get <- function() x
  
  setinverse <- function(inverse) i <<- inverse
  
  getinverse <- function() i
  
  list(set= set, get = get, 
       
       setinverse = setinverse, 
       
       getinverse = getinverse)
  
}


## makeCacheMatrix initializes the cache then calculates the 
## inverse of a matrix and saves it to a cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  
  if (!is.null(i)){ #checks to see if there is something in the cache
    # if yes, then checks the cache
    
    message("getting cached data")
    
    return(i)
    
  }
  
  data <- x$get()  # if nothing is in the cache, put inverse in it
  
  i <- solve(data, ...)
  
  x$setinverse(i)
  
  i  
}
