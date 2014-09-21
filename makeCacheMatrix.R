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
