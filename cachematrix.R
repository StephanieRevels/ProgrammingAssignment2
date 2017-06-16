## This function calculates and caches the inverse
## of a matrix.

## makeCacheMatrix computes the inverse of
## a matrix and caches it.

makeCacheMatrix <- function(x = maxtrix()) {
        Inv <- NULL
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
        get <- function() x
        setInv <- function(inverse) Inv <<- inverse
        getInv <- function() Inv
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## cacheSolve computes the inverse of a matrix.
## If the inverse has already been calculated, 
## then cacheSolve will retrieve the inverse from
## the cache.

cacheSolve <- function(x, ...) {
        Inv <- x$getInv()
        if(!is.null(Inv)) {
                message("getting cached data")
                return(Inv)
        }
        data <- x$get()
        Inv <- solve(data, ...)
        x$setInv(Inv)
        Inv
}
