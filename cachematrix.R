## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}

#m <- matrix(rnorm(9),3,3)
#m1 <- makeCacheMatrix(m)
#cacheSolve(m1)

###
#> cacheSolve(m1)
#[,1]        [,2]       [,3]
#[1,]  0.8803785  0.18420092 -0.1193069
#[2,] -0.2220374  0.09670271 -0.3009365
#[3,]  0.5708684 -0.83035586 -0.0389687
