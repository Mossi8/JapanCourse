#1. What is the square root of 10?
sqrt(10)
  
#2. What is the logarithm of 32 to the base 2?
log(32, base=2)
#3. What is the sum of the numbers from 1 to 1000?

x = 1:1000
sum(x)

#4. What is the sum of all even numbers from 2 to 1000?

y = x[which(x %% 2 == 0)]
sum(y)
#5. How many pairwise comparisons are there for 100 genes?

100*(100-1)/2
#6. And how many ways to arrange 100 genes in triples?

100^3
