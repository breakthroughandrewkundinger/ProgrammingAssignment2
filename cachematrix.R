## Cache Inverse of Matrix
## These functions create a special objects that store a matrix. It caches the inverse.
## Function creates "matrix" object caches inverse.

makeCacheMatrix <‐ function(x = matrix()) {
    invers <‐ NULL
    set <‐ function(y) {
        x <<‐ y
        invers <<‐ NULL
}

get <‐ function() x
setInverse <‐ function(inverse) invers <<‐ inverse
getInverse <‐ function() invers
list(set = set,
    get = get,
    setInverse = setInverse,
    getInverse = getInverse)
}

## See makeCacheMatrix above. If inverse calculated with no change to the matrix, get inverse from cache.

cacheSolve <‐ function(x, ...) {

## Return inverse 'x'
invers <‐ x$getInverse()
if (!is.null(invers)) {
message("retrieve cache")
return(invers)
}
mat <‐ x$get()
invers <‐ solve(mat, ...)
x$setInverse(invers)
invers
}
