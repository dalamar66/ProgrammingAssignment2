## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(z = matrix()) {
        i <- NULL
        set <- function(y) {
                z <<- y
                i <<- NULL
        }
        get <- function() z
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(z, ...) {
        i <- z$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- z$get()
        i <- solve(data, ...)
        z$setinverse(i)
        i
}

