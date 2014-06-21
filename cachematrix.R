## makeCacheMatrix is a list of four functions (set,get,setinverse,getinverse).
## get and set are responsible for taking in the input matrix and getinverse and set
## inverse gets or sets the inverse matrix respectively. When makeCacheMatrix is passed as an 
## argument to cacheSolve, it either computes the inverse and sets the inverse or it takes the value of 
## of inverse already in the cache and returns it



makeCacheMatrix <- function(x = matrix()) {
  
m<-NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function()x
setinverse<-function(inverse) m<<-inverse
getinverse<-function()m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}




cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<- solve(data)
  x$setinverse(m)
  m
}
      
  
