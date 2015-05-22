#
# Richard Becker
# Programming Assignment 2
# cacheSolve
#
#
# cacheSolve provides (returns) the inverse of the matrix created by mackCacheMatrix
# if the environment mtrx is null, the inverse is determined
# if the mtrx is not null, then the inverse has been previoulsy determined and mtrx is returned
#

cacheSolve <- function(x, ...)
{
  mtrx <- x$getinverse()
  if(!is.null(mtrx))
  {
    message("getting cached data")
    return(mtrx)
  }
  data <- x$get()
  mtrx <- solve(data, ...)
  x$setinverse(mtrx)
  mtrx
}
