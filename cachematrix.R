## Overall Description: The purpose of the following pair of functions is to 
## cache the inverse of a matrix.  Having a cached inverted matrix avoids costly
## computation (having to compute the inverse of the matrix repeatedly).


## The purpose of this first function makeCacheMatrix is to store (cache) 
## the contents of both the original matrix and its inverse.

makeCacheMatrix <- function(x=numeric()) {
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x  ## retrieve the contents of x (the matrix)
  setInverse <- function(inverse) m <<- inverse  ## stores the contents of the inverted matrix 
                                                 ## and assigns it to m (preserved state) 
  getInverse <- function() m  ## retrieve the contents of m (the cached inverted matrix)     
  
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse
  )                           ## return list of 4 objects to be used as arguments in cacheSolve
}


## The purpose of this second function cacheSolve is to return the inverse of a matrix.

cacheSolve <- function(x, ...) {
  m <- x$getInverse()   ## look for previously cached inverted matrix from makeCacheMatrix
  
  if(!is.null(m)) {
    message("getting cached inverted matrix")
    return(m)
  }                     ## return previously cached inverted matrix if it exists
                        ## and print the message
  
                        ## if there is no previously cached inverted matrix,
  
  data <- x$get()       
  m <- solve(data, ...)  ## take the matrix from makeCacheMatrix and invert it
  
  x$setInverse(m)        ## cache the inverted matrix
  m                      ## print the inverted matrix to console
}

