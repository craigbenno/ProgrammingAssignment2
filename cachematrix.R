makeCacheMatrix <- function(x = matrix())
{
    m <- NULL
    set <-function(y)
    {
        x <<- y
        m <<- NULL
    }
    get <- function()
    {
        x
    }
    setinverse <- function(matrix)
    {
        m <<- solve(matrix)
    }
    getinverse <- function()
    {
        m
    }
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(x, ...)
{
    m <- x$getinverse()
    if (!is.null(m))
    {
        message("getting cached data, hold on")
        return(m)
    }
    data <- x$get()
    x$setinverse(data)   
}

