## Overall Description: The purpose of the following pair of functions is to 
## cache the inverse of a matrix.  Having a cached inverse avoids costly
## computation (having to compute the inverse of the matrix repeatedly).


## makeCacheMatrix is a function that creates a list of 4 objects:
## 1) set() is a function to set the contents of the matrix
## 2) get() is a function to retrieve the contents of the matrix
## 3) setInverse() is a function to set the contents of the inverted matrix
## 4) getInverse() is a function to retrieve the contents of the inverted matrix

## The purpose of this first function makeCacheMatrix is to store (cache) 
## the contents of both the original matrix and its inverse.

makeCacheMatrix <- function(x=numeric()) {
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse
  )
}


## The purpose of cacheSolve is that it is a function that returns an inverse of a matrix.
## It does this in one of the two following ways:

## 1) IF the inverted matrix has already been cached (this function has already seen 
## the matrix returned from cacheMakeMatrix and prevously cached its inverse) AND
## the contents of the matrix has not changed, THEN it simply retrieves the cached
## inverted matrix.

## 2) Otherwise, it takes the matrix returned from makeCacheMatrix and calculates 
## its inverse and caches it.

makeCacheMatrix <- function(x=numeric()) {
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse
  )
}
