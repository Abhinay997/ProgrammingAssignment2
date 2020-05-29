## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix Function
# This function creates matrix that can cache its inverse.

 #Set and Get values to the Matrix
  #Set and Get Inverse values to the Matrix


makeCacheMatrix <- function(x = matrix()) {j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)

}


## Write a short comment describing this function
# cacheSolve Function 
# This function computes the inverse of the matrix returned by 
# makeCacheMatrix function. If the inverse has already been 
# calculated (and the matrix has not changed), then the cachesolve 
# should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) { j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
        
}
