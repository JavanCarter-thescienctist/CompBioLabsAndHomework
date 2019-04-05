#Lab 08 

# Problem 3 part a

t <- 1
K <- 10000
r <- 0.8
n <- rep(2500, 12)

for (t in 2:12){
  n[t]  <-  n[t-1]+ ( r * n[t-1] * (K - n[t-1]) / K )
}
print(n)

#Problem 3 part b
Logisticgrowth <- function(r, K, gen, initialpop){
  
  n <- rep(initialpop, gen)
  t <- 1:length(n)
   for (t in 2:length(n)){
    n[t]  <-  n[t-1]+ ( r * n[t-1] * (K - n[t-1]) / K )
  }
  return(n)
}
Logisticgrowth(0.8, 10000, 12, 2500)
# I am a coding genius!!!!

#Problem 3 part c

Logisticgrowth <- function(r, K, gen, initialpop){
  
  n <- rep(initialpop, gen)
  t <- 1:length(n)
  for (t in 2:length(n)){
    n[t]  <-  n[t-1]+ ( r * n[t-1] * (K - n[t-1]) / K )
  }
  
  time <- 1:length(n)
  abundance <- n
  plot(time, abundance)
  Data <- data.frame(time, abundance)
  return(Data)
}
print(Data)


#Problem 3 part d
Data <- Logisticgrowth(0.8, 10000, 12, 2500)
# correction, I am a coding god!!!!!

#Problem 3 part e 
write.csv(Data, file = "Logisticgrowthdata") 






