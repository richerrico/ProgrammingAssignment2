## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

	## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL  ##sets the inverse of a matrix to null
  ## setting the matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  ## getting the matrix
  get <- function() x           
  ## setting the inverse matrix
  setimatrix <- function(imatrix) 
    i <<- imatrix
  ## getting the inverse matrix
  getimatrix <- function() i                 
  
  ## list of names
  list(set = set, get = get,
       setimatrix = setimatrix,
       getimatrix = getimatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## imatrix value
  i <- x$getimatrix() ## to get the invmat in previous function
  
  ## if the inverse matrix is already stored, get cached data and return the inv matrix
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## if the inverse matrix is not stored, calculate the inverse of the matrix 
  data <- x$get()              ## to get the matrix
  i <- solve(data, ...)      ## to calculate the inverse
  x$setimatrix(i)             ## to set the inverse of the matrix
  i                         ## to print the inverse of the matrix
}
