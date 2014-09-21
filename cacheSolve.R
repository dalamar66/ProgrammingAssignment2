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
