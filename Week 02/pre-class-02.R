###########################
#Blake Hansen             #
#PHP2560 Pre-Class 02 Work#
###########################

#Generate 200 random numbers from the standard exponential distribution and store them in a vector
exp.draws.1 <- rexp(n=200)
#calculate mean and sd of random numbers 
mean(exp.draws.1)
sd(exp.draws.1)

#Repeat process for rate=0.2, 5, 7.3, and 10
exp.draws.0.2 <- rexp(n=200, rate=0.2)
mean(exp.draws.0.2)
sd(exp.draws.0.2)

exp.draws.5 <- rexp(n=200, rate=5)
mean(exp.draws.5)
sd(exp.draws.5)

exp.draws.7.3 <- rexp(n=200, rate=7.3)
mean(exp.draws.7.3)
sd(exp.draws.7.3)

exp.draws.10 <- rexp(n=200, rate=10)
mean(exp.draws.10)
sd(exp.draws.10)

#Produce histogram of numbers from standard exponential distribution
hist(exp.draws.1)

#Display random values from standard exponential distribution in order
plot(exp.draws.1)

#create scatterplot of two vectors against each other
plot(exp.draws.1, exp.draws.10)

#create vector of means, sds, and rates of the five distributions generated
means <- c(mean(exp.draws.1), mean(exp.draws.0.2), mean(exp.draws.5),
           mean(exp.draws.7.3), mean(exp.draws.10))

sds <- c(sd(exp.draws.1), sd(exp.draws.0.2), sd(exp.draws.5),
         sd(exp.draws.7.3), sd(exp.draws.10))

rates <- c(1, 0.2, 5, 7.3, 10)

#plot A
plot(rates, means, main = "Plot A")
#This plot shows the relationship between the rate parameter and the mean of the 200 randomly generated numbers.
#From statistics, we know that the mean of each distribution is 1/rate parameter. Accordingly, the mean of each distribution is very close to 1 divided by its rate.

#plot B
plot(rates, sds, main = "Plot B")
#This plot shows the relationship between the rate parameter and the standard deviation of the 200 randomly generated numbers.
#From statistics, we know the variance of each of these distributions is 1/rate^2, so it follows the standard deviation for each distribution is 1/rate, which shown to be approximately true for each set of numbers we generated.

#plot C
plot(means, sds, main = "Plot C")
#This plot shows the relation ship between the mean and standard deviation of each of our approximate distributions.
#We know that mean = sd for this distribution, so we see an approximate linear relationship

#Part II
#Generate 1.1 million numbers from the standard exponential distribution
big.exp.draws.1 <- rexp(1.1*10^6)

#Calculate mean and variance of randomly generated numbers
mean(big.exp.draws.1)
sd(big.exp.draws.1)

#plot histogram of random numbers
hist(big.exp.draws.1)
#Note: This histogram appears to be almost identical to the function 1-exp(-x).
#Considering the sheer number of random numbers we generated, 
#it makes sense that plotting them in a histogram creates a very close approximation of the standard exponential distribution

#create a new vector, which contains the entries in big.exp.draws.1 which are greater than 1, and calculate its mean
big.exp.draws.1_subset <- big.exp.draws.1[big.exp.draws.1 > 1]
mean(big.exp.draws.1_subset)

#store big.exp.draws.1 in matrix form
big.exp.draws.1.mat <- matrix(big.exp.draws.1, nrow = 1100, ncol = 1000)

#create histogram of values in matrix and store in a variable
big.hist <- hist(big.exp.draws.1.mat)
#Note: The result is stored as a list of 6 items containing information R needs to construct a histogram

#calculate mean of the 371st column of big.exp.draws.1.mat
mean(big.exp.draws.1.mat[, 371])

#Find means of all 1000 columns and display them in a histogram
column_means <- apply(big.exp.draws.1.mat, 2, mean)
hist(column_means)
#This histogram does not match the histogram generated in 5b because instead of directly plotting values,
#we are transforming them by taking the mean of each column. Since each column contains 1100 observations,
#we know by the central limit theorem that the distribution of means will be very close to the normal distribution with Mean = 1 with Variance = 1/1100



