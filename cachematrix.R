## Returns the inverse of a matrix
## Caches the inverse when it is calculated
## Only calculates the inverse if it is not currently cached


## Calculates the inverse of a matrix and caches the matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
  globalMatrix <<- x
  globalInverse <<- solve(x)
}


## Tests if the matrix matches the cached matrix, if not runs makeCacheMatrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (!exists("globalMatrix")) {  ## Tests if a matrix has been cached
    globalMatrix <- NULL
  }
  if (identical(x, globalMatrix)) {  ## Tests if cached matrix matches the matrix being inverted
    message("getting cached matrix")
  } else {
    makeCacheMatrix(x)
  }
  return (globalInverse)
}