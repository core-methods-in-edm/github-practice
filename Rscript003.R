#https://www.youtube.com/watch?v=wkHLIWiGLyI

bucket <- c(1,2,3,4,5,6)

s1 <- sample(bucket, 50, replace = TRUE)

s2 <- sample(bucket, 5, replace = FALSE)

s3 <- sample(runif(20, min = 10, max = 20), 3000, replace = TRUE)


r_num <- runif(20, min = 10, max = 20)
s4 <- sample(r_num, 3000, replace = TRUE)



hist(s1)

hist(s2)

hist(s3)

hist(s4)

