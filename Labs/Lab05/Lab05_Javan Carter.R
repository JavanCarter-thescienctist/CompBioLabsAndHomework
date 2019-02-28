###
###
Vector1 <- read.csv(file.choose())



Vector1$x


# Assignment 1
x <- 88
 if (x > 5){
   print("Its pretty big!!! Bigger than 5 atleast")
 }



y <- c(3,4,29,6,2,3,4,5,5)
for (i in 1:9){
if (y[i] > 20){
  print("they're pretty big")
} else{
  print("They're are pretty small")
}

}



#Assignment 2 
Vector1 <- read.csv(file.choose())
Vector1 <- as.vector(t(Vector1))

for (i in 1:length(Vector1)){

if ( Vector1[i] < 0 ) {
  Vector1[i] <- NA
}
}
show(Vector1)



#Assignment 2b

naTest <- is.na(Vector1)
Vector1[naTest] <- NaN

show(Vector1)
#Assignment 2c

Vector2 <- which(is.nan(Vector1))
Vector1[Vector2]<- 0
show(Vector1)

#Assignment 2d
Storage<- rep(0, length(Vector1))

for (i in 1:length(Vector1)){
  if ( Vector1[i] > 50 && Vector1[i] < 100){
    Storage[i] <- Vector1[i]
  }
}

show(Storage)  


# alternate verison
# assignment 2d 
Storage.pos <- which(Vector1 > 50 & Vector1 < 100)
show(Storage.pos)  
total.num <- length(Storage.pos)
print(total.num)

#assignment 2e
FiftyToOneHundred <- Vector1[Storage.pos]

#assignment 2f

write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

#assignment 3a

CO2gaschart <-read.csv(file.choose())

Gas <- which(CO2gaschart[,3] > 0)
Show(Gas) 
ShowYear <- CO2gaschart[Gas[1],1]


#assignment 3b

Total <- which(CO2gaschart[, 2] > 200 & CO2gaschart[, 2] < 300)
ShowTotal <- CO2gaschart[Total, 1]




#assignment 1 Part II
totalgenerations <-1000
initPrey <- 100
initPred <- 10
a <- 0.01
r <-0.2
m <-0.05
k <- 0.1

t <- seq(1, totalgenerations)
n <- rep(initPrey, totalgenerations) 
p <- rep(initPred, totalgenerations)

#n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
#p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])


for ( t in 2:totalgenerations){
  
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  if (n[t] < 0){
    n[t] <- 0
  }
  if (p[t] < 0){
    p[t] <- 0
  }
}
print(n)
print(p)
totalgen <- seq(1,1000)
plot(totalgen, n, pch= 1, col="blue", xlab = "abundance", ylab = "time")
lines(totalgen, p, pch= 1, col="red", xlab = "abundance", ylab = "time")

myResults <- cbind(totalgen, n, p)
colnames(myResults) <- c("time", "Prey-abundance", "Pred-abundance")
print(myResults)
str(myResults)
write.csv(x = myResults, file = "PredPreyREsults.csv")
