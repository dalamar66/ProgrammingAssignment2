
## Functions to get and set the inverse of the matrix using the right scope.

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



## This function gets a parameters, uses getinverse to see if the inverse exists, if it's not null uses the cached inverse, if not it calculates using the solve function and stores it.

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

