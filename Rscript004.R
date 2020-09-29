#https://www.youtube.com/watch?v=gCAwHbmOqCo

library(ggplot2)

---
#diamonds dataset
---
View(diamonds)
dim(diamonds)
ggplot(diamonds)

ggplot(diamonds, aes(carat, price))

d01 <- ggplot(diamonds, aes(carat,price))
  d01 + geom_point()

  
d02 <- ggplot(diamonds, aes(carat,price,color=cut))
  d02 + geom_point()

  
d03 <- ggplot(diamonds, aes(carat,price,color=color))
  d03 + geom_point()

---
#iris dataset
---  

View(iris)
dim(iris)
ggplot(iris)  

ggplot(iris)

ggplot(iris, aes(Sepal.Length,Petal.Length))

d11 <- ggplot(iris, aes(Sepal.Length,Petal.Length))
  d11 + geom_point()


d12 <- ggplot(iris, aes(Sepal.Length,Petal.Length,color=Species))
  d12 + geom_point()

