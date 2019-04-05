# Problem 1
#The area of a triangle is 0.5*base*height


TrangleArea <- function(b, h){
base <- b
height <-h 
TriangleArea<- base * height *0.5

return(TriangleArea)
}

TrangleArea(10,9)#example


#Problem 2
#Created a function that obtained the absolute value for numeric vectors...Sam you sneaky devil! 


myabs <- function(a){# make the funtion
x <- a# this is probably not needed but I like it
  for (i in 1:length(x)){#for loop for helping if the fuction needs to read a vector
  if (x[i] < 0){# if it is less that 0 then it multiples it by -1 to make it the absolute value
   x[i] <- x[i] * -1
   }
  }
return(x)# show me x 
}


myabs(5)
myabs(-2.3)
myvector <- c(1.1, 2, 0, -4.3, 9, -12)
myabs(myvector)
#wooohooooo!!!!


#Problem 3

FibNumFunc <- function(n,s) {
  
Fibonaccinumbers<- rep(0,n)
Fibonaccinumbers[2] <- 1
Fibonaccinumbers[1] <- s


  for (i in seq(3,n)){
   Fibonaccinumbers[i]<-Fibonaccinumbers[i-1] + Fibonaccinumbers[i-2]
  }
return(Fibonaccinumbers)
}

FibNumFunc(12,0)


#Problem 4

MyNumberFunc <- function(x, y) {
  answer <- (x - y)^2
  return(answer)
}
MyNumberFunc(3,5) #example
Vec1 <- c(2, 4, 6)
MyNumberFunc(Vec1, 4)  



#Problem 4b 

Whatisthemeaningofthis <- function(x) {
  answer <- sum(x)
  answer1 <- answer/ length(x)
  return(answer1)
} 
Vec1 <- c(5, 15, 10)

Whatisthemeaningofthis(Vec1)

Xvector <- as.vector(t(x))

Whatisthemeaningofthis(Xvector)

#Problem 4c

Dataforlab07 <- read.csv(file.choose())
Dataforlab07 <- as.vector(t(Dataforlab07))

Totalsumofsquare <- function(A){
  
   Totalmean <- Whatisthemeaningofthis(A)
   Totalmean <- rep(Totalmean, length(A)) 
   Difference <- rep(NA, length(A))
   for (i in 1:length(A)){
     Difference[i] <- MyNumberFunc(Totalmean, A)[i]
   }
   Answer <- sum(Difference)
   return(Answer)
   
}

Totalsumofsquare(Dataforlab07)  

# Wow, this took me a lot longer than I thought

