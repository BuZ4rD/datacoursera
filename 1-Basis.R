getwd()
read.csv("soilmoisture_dataset.csv")
source("mycode.R")
myfunction(second())
print (myfunction())
second(4:10)

x <- 1L:20L
print (x)
x*2/2-3.4**20
hw <- "Hello"
hw
x <- 1.2
x * 2

x <- c(0.5,0.6) ## numeric
x <- c(TRUE,FALSE,TRUE)
class(x)
as.numeric(x)
as.character(x)
x <- as.character(x)
x <- as.numeric(x)


## LIST
x <- list(1,"a", TRUE)

## Matrix

m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)

m <- matrix(1:6, nrow = 2, ncol = 3)
m

m <- 1:10
m
dim(m) <- c(2,5)
m

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

# Data Type Factors

x <- factor(c("yes", "yes", "no", "no"))
table(x) # gives stats on factors
unclass(x)

x<- factor(c("yes", "yes", "no", "no"),
           levels = c("yes","no"))
x

## NaN and NA -- NA is not a NaN and can be also Numeric, character
## but NaN is a NA

x <- c(1,2,NA, 10, 3)
is.na(x)
is.nan(x)

x <- c(1,2,NA, NaN, 3)
is.na(x)
is.nan(x)

## DataFrames
df <- data.frame(foo=1:4, bar = c(T,T,F,F))
df

df <- read.csv("soilmoisture_dataset.csv")
df

## Names
x <- 1:3
names(x) <- c("foo", "bar", "nof")
x

x <- c(a=1, b=2, B=3)
x

x <- list(a=1, b=2, B=3)
x

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m

## DataType summary
## atomic classes in numeric, logical, character,
## integer, and complex vectors

dput(m,file = "matrix.txt")

m1 <- read.table("matrix.txt")
m1

mytable <- read.csv("soilmoisture_dataset.csv", nrows = 1)
mytable



## dputing

y <- data.frame(a=1,b="a")
dput(y)

dput(y, file = "y.R")
new.y <- dget('y.R')

x <- "foo"
y<- data.frame(a = 1, b = "a")
dump(c("x","y"), file="data.R")
rm(x,y)  ## remove X and Y
source("data.R")
y
x

## Interface to the Outside World
## file, gzfile, bzfile, url
## 
mysite <- url("http://www.dendropolis.org","r")
mysite <- readlines(mysite)


con <- gzfile ("words.gz")
x <- readline(con, 10)

## Subsettings

x = c("a","b","c","c","d", "a")
x[1]
x[1:4]
x[x>"a"]

u <- x>"a"
u
x[u]

x=list(foo=1:4, bar=0.6)
x[1]

x[[1]]

x$bar
x$foo

x=list(foo=1:4, bar=0.6, baz = "hello")
name = "foo"
x[[name]]

x$name
x$foo  


x=list(a = list(10,12,14), b= c(3.14, 2.8))
x[[c(2,1)]]
x$a

x<- matrix(1:6,2,3)
x[1,2]
x[1,2,drop=F]
x[(<1),]
x[1, , drop=T]


## PArtial Matching

x = list(aaaardwkr = 1:5)
x$a

x[["a", exact=F]]

## Removing NA Values

x<- c(1,2,NA,4,NA,5)
bad = is.na(x)
x[!is.na(x)]
x[!bad]

y = c("a", "b", NA, NA, "f","n")
good = complete.cases(x,y)
x[good]
y[good]

airquality = read.csv("hw1_data.csv")
x = read.csv("hw1_data.csv")
names(x)
x
x[is.na(x),"Ozone"]-1
head(x)
tail(x)
x[47,"Ozone"]
x[is.na(x),"Ozone"]

## What is the mean of the Ozone column in this dataset? Exclude missing value
## (coded as NA) from this calculation.
mean(x[,"Ozone"], na.rm = TRUE,)

matrixplot(x, sortby = 2)
## Extract the subset of rows of the data frame where Ozone values are above 31
## and Temp values are above 90. What is the mean of Solar.R in this subset?
sub_x = (x[which(x$Ozone>31 & x$Temp>90),])
mean(sub_x[,"Solar.R",],na.rm = T)

month6 = x[x$Month==6,]
mean(month6[,'Temp'],na.rm=T)

month5 = x[x$Month==5,]
max(month5[, "Ozone"],na.rm = T)


x <- c(17, 14, 4, 5, 13, 12, 10) 
x[x>10]==4
x
