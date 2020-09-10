
con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)
close(con)

htmlCode[c(10,20,30,100)]
sapply(htmlCode[c(10,20,30,100)],FUN=function(X) nchar(X))

 
