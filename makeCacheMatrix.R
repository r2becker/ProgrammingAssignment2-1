#
# Richard Becker
# Programming Assignment 2
# makeCacheMatrix
#
#
# makeCacheMatrix will create a matrix from the values provided
# set the value of the matrix
# get the valude of the matrix
# set the inverse of the matrix
# set the inverse of the matrix
#

makeCacheMatrix <- function(x = matrix()) # Create a matrix from the x values provided and make the assignment to mackCacheMatrix
{
    mtrx <- NULL # assign NULL to an empty place holder
    set <- function(y)
    {
      x <<- y # assign y to the x environment
      mtrx <<- NULL # assign NULL to the mtrx environment
    }
    get <- function() x
    setinverse <- function(inverse) mtrx <<- inverse 
    getinverse <- function() mtrx
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}