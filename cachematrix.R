## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I decided to set input x to a matrix 
## and set the solved value of "ic" to null

makeCacheMatrix <- function(x = matrix()) {
  ic <- NULL
  set <- function(y){
      x <<- y
      ic <<- NULL
  }
  get <- function() x
  seticerse <- function(solveMatrix) ic <<- solveMatrix
  geticerse <- function() ic 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## cachesolve computes the inverse of the matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ic <- x$getinverse()
  if(!is.null(ic)){
      message("getting cached data")
      return(ic)
  }
  data <- x$get()
  ic <- solve(data)
  x$setInverse(ic)
}
