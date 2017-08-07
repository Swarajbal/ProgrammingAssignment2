## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMat <- NULL
  set <- function(y){
    x <<- y
    inverseMat <<- NULL
  }
    get <- function() x
    setInverse <- function(solveMatrix) inverseMat <<- solveMatrix
    getInverse <- function() inverseMat
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseMat <- x$getInverse()
  if (!is.null(inverseMat)) {
    message("Data")
    return(inverseMat)
  }
           matr <- x$get()
           inverseMat <- solve(matr, ...)
           x$setInverse(inverseMat)
           inverseMat
  
}
