#Cool package that allows me to color my txt!
library(crayon)


#Practice assignment 1.1. I told i to run the for loop 10 times.  
for ( i in 1:10 ) {
  print("Hi")
}
#Practice assignment 1.2. I told i to run the for loop 8 times representing 8 weeks. 
Tim <- 10
Gumcost <- 1.34*2
allowance <- 5
for ( i in 1:8) {
  Tim  <-  (Tim) + allowance - (Gumcost)
  print(Tim)
}

#Practice assignment 1.3 Super proud of this one!!!! 
precent <- .05
Total <- 2000
for ( i in 1:7) {
  Individual  <-  Total * precent
  Total <-  Total - Individual
  print(paste("Number subtracted: ", Individual))
  cat(green(paste(Total, "\n")))
}

#Practice assignment 1.4 I made non-magic number then a vector for n. I then changed the starting point of the t sequence and ran the hell out of that equation. 
t <- 1
K <- 10000
r <- 0.8
n <- rep(2500, 12)

for (t in 2:12){
  n[t]  <-  n[t-1]+ ( r * n[t-1] * (K - n[t-1]) / K )
}
print(n)

#Practice assignment 5a Made a vector with 18 zeros. 

zeros<-rep(0,18)
show(zeros)
#Practice assignment 5b ( not right way to do it) This is the sexier way to do the 5b but Sam wants the alternate verision
for (i in threes<- seq(3,54,3)){
}
print(threes)
# Second try on assignment 5b. HOT DAMN I FIGURED IT OUT!!! I made a for loop that takes the sequence of i's that and multiple them by 3 then takes the place of the previous i. 
for (i in seq(1,18)){
  zeros[i] <- i * 3
}
print(zeros)

#Practice assignment 5c. I made a vector that has 18 zeros in it but replaced the first number with 1
zeros <- rep(0,18)
zeros[1] <- 1

#Practics assignment 5d. I created a vector full of zeros then looked at it to make sure it was pretty. Then I made a for loop that did that simple math equation and replaced i with the new number everytime.  
zeros<-rep(0,18)
show(zeros)
for (i in seq(2,18)){
  zeros[i] <- (1 + (2 * zeros[i-1]))
}
print(zeros)

#Practice assignement 6. I literally typed out the Fibonacci number formula and replaced n with i because that is the variable that is changing everytime. 
Fibonaccinumbers<- rep(0, 20)
Fibonaccinumbers[2] <- 1

for (i in seq(3,20)){
  Fibonaccinumbers[i]<-Fibonaccinumbers[i-1] + Fibonaccinumbers[i-2]
}
print(Fibonaccinumbers)


#Practice assignment 7. Repeated assignment 1.4 but stored time and abundance. I then plotted the two variables. 
t <- 1
K <- 10000
r <- 0.8
n <- rep(2500, 12)

for (t in 2:12){
  n[t]  <-  n[t-1]+ ( r * n[t-1] * (K - n[t-1]) / K )
  abundance<- n
  time[t] <- t
}
plot(time, abundance)




