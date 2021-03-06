
#makeVector <- function(x = numeric()) {
#        m <- NULL
#        set <- function(y) {
#                x <<- y
#                m <<- NULL
#        }
#        get <- function() x
#        setmean <- function(mean) m <<- mean
#        getmean <- function() m
#        list(set = set, get = get,
#             setmean = setmean,
#             getmean = getmean)
#}

#cachemean <- function(x, ...) {
#       m <- x$getmean()
#        if(!is.null(m)) {
#                message("getting cached data")
#                return(m)
#        }
#        data <- x$get()
#        m <- mean(data, ...)
#        x$setmean(m)
#        m
#


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) { 
		x <<- y
		inv <- NULL
	}
	get <- function() x
	setinv <- function(solve) inv <<- solve
	getinv <- function() inv
	list(set = set,get = get,setinv = setinv, getinv = getinv) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
		inv <- x$getinv()
		if(!is.null(inv)) { 
			message("getting cached data")
			return(inv)
		}
		data <- x$get()
		inv <- solve(data,...)
		x$setinv(inv)
		inv

		
        ## Return a matrix that is the inverse of 'x'
}
