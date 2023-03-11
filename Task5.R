#1. Use the R internal CO2 dataset (“data(CO2)”).

data(CO2)
#2. Describe briefly the content of the CO2 dataset using the help function.
The data contains 84 rows and 5 columns of an experiment on the cold tolerance 
of the grass species Echinochloa crus-galli. Each plant has a unique identifier
under column plant, Type indicated the origin, Treatment for chilled or unchilled, 
conc contains a numeric value for the amcient CO2 concentrations and uptake a value 
for the uptake rates.
#3. What is the average and median CO2 uptake of the plants from Quebec and Mississippi?

mean(filter(CO2, Type=="Quebec")$uptake)
[1] 33.54286

> median(filter(CO2, Type=="Mississippi")$uptake)
[1] 19.3