#1. Write a function that calculates the ratio of the mean and the median of a given vector.
mean_median_ratio <- function(v) {
  mean_ <- mean(v)
  median_ <- median(v)
  mean_/median_
}

mean_median_ratio(1:50)
#2. Write a function that ignores the lowest and the highest value from a given vector and calculate the mean.

rem_and_mean<- function(v) {
  min_ <- min(v)
  max_ <- max(v)
  v = v[which(v > min_)]
  v = v[which(v < max_)]
  mean(v)
}

rem_and_mean(1:50)


#3. Read about piping from here:https://r4ds.had.co.nz/pipes.html#pipes (you don’t have
#to learn everything, a basic understanding of the usage is enough). Write a short
#(max. 300 characters, no spaces) 
Piping allows to concatenate operation without the need of storing multiple variables that would be used in intermediate steps.

#4. Familiarize yourself with the apply-family of functions (apply, lapply, sapply etc.)
#http://uc-r.github.io/apply_family
#Write a short explanation (max. 300 characters, no spaces) of why they could be
#useful in your work.

Apply, sapply and lapply allow to use functions on a vector but they differ in the outputs that they produce.