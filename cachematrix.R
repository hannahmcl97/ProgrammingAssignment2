

## this function makes a cache matrix

makeCacheMatrix <- function(x = matrix()) {
i<- NULL
set<- function(y) {
x<<-y
i<<- NULL
}
get<- function()x
setinv <- function(inv)i <<-inv
getinv <- function()i
list(set = set, get = get,
setinv = setinv,
getinv = getinv)
}
## this calls the cache matrix or sets the inverse
cacheSolve <- function(x, ...) {
       i <- x$getinv()
       if(!is.null(i)) {
              message ("getting cached data")
              return(i)
       }
       data <- x$get()
       i <- solve(data, ...)
       x$setinv(i)
       i
}
