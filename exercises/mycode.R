myfunction <-function() {
  x <- rnorm(100)
  mean(x)
  
}
second <- function (x) {
  x + rnorm(length(x))
}

install.packages("VIM")
install.packages("naniar")
install.packages("missMDA")
install.packages("Amelia")
install.packages("mice")
install.packages("missForest")
install.packages("FactoMineR")
install.packages("Tidyverse")