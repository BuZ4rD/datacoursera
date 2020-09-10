

add2 <- function(x,y) x+y


above10 <- function(x){
  use <- x>10
  x[use]
}


above <- function(x,n=10){
  use <- x>n
  x[use]
}


colum_mean <-function(y, removeNA=TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], no.rm = removeNA)
    }
  means
}

f <- function(a, b = 1, c =2, d= NULL)

  f <- function(a,b=10){
    a^b
  }


make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

??make
cube <- make.power(3)
square <- make.power(2)

cube(2)
