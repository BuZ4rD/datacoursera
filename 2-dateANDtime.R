## Date Time
## dates, stored at intern as second from 01/01/1970
##
##
##

x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-01"))
weekdays(x)
months(x)

now <- as.Date(Sys.time())
weekdays(now)
months(now)

unclass(now)
Sys.time()
p
p <- as.POSIXlt(now)
names(unclass(p))

datestring <- c("September 3, 2020 10:40")
strptime(datestring, "%B %d, %Y %H:%M")

f<- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)


x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y
