a. Extract summary statistics (mean, median and maximum) for the following
variables from the ‘chromosome’ data: variations, protein coding genes, and
miRNAs. Utilize the tidyverse functions to make this as simply as possible.

> library(tidybiology)
> data(chromosome)
> chromosome

chromosome %>% summarise_at(.vars = c("variations", "protein_codinggenes", "mi_rna"), .funs=list("mean"=mean, "median"=median, "max"=max))

b. How does the chromosome size distribute? Plot a graph that helps to
visualize this by using ggplot2 package functions.

> ggplot(chromosome, aes(x=basepairs,y=id, col=id)) + geom_point()

c. Does the number of protein coding genes or miRNAs correlate with the length
of the chromosome? Make two separate plots to visualize these relationships.

ggplot(chromosome, aes(x=basepairs,y=protein_codinggenes, col=id)) + geom_point()
ggplot(chromosome, aes(x=basepairs,y=mi_rna, col=id)) + geom_point()

d. Calculate the same summary statistics for the ‘proteins’ data variables length
and mass. Create a meaningful visualization of the relationship between
these two variables by utilizing the ggplot2 package functions. Play with the
colors, theme- and other visualization parameters to create a plot that pleases
you.

data("proteins")
ggplot(proteins, aes(x=length,y=mass)) + geom_point()
