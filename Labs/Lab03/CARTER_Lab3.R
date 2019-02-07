#"lab step #3"this is the number of chips I have for my guest
FlamingHotCheetos<- c(1, 1, 1, 1, 1)
#"lab step #this is a list of my firends ( I only like friends with names that start with J)
Guest<- c( "Jamies", "Jill", "Jeff", "Jeniffer", "Javan", "Jarman", "JayJay", "Jasmine")
#"lab step #5" I made a vector with the average amount of chips that I assume the guest will eat" 
EatenChips<-c(0.4, 0.4, 0.4, 0.4, 0.4)
#"Lab step #5" I subtracted the intial chip size by the assumed consumption rate
Guestconsumption<-(FlamingHotCheetos-EatenChips)
#"Lab step #8" I made vectors of my friends rankings of the star wars movies
Self<-c(7, 6, 5, 1, 2, 3, 4)
Penny<-c(5, 7, 6, 3, 1, 2, 4)
Jenny<-c(4, 3, 2, 7, 6, 5, 1)
Lenny<-c(1, 7, 3, 4, 6, 5, 2)
Stewie<-c(6, 7, 5, 4, 3, 1, 2)
#"Lab step #9" I took the value number 4 from Penny and lenny and made a new vector for it
PennyIV<-(Penny[4])
LennyIV<-(Lenny[4])
#"Lab step #10" Made a matrix named Friendgroup from the previous vectors about my friends star wars ranking
Friendgroup<-cbind(Self, Penny, Jenny, Lenny, Stewie)
#Lab step #11, Penny has 7 numbers on it but PennyIV only haves the ranking of the fourth movie in it so just 3
str(Penny)
str(PennyIV)
#Lab Step 12, If you use the commands correctly then I don't see a difference in the product of using either of the commands. 
Friendgroup<-data.frame(Self, Penny, Jenny, Lenny, Stewie)
#Friendgroup<-as.data.frame(Friendgroup)
#Lab Step 14, I made a vector of Starwars movie numbers
StarWars<-c("I", "II", "III", "IV", "V", "VI", "VII")
#Lab Step 15, So I used the row.name() command to add the row that describe the movies on the end of my matrix. Use the command like this row.name(matrix you want to use)<-(the vector that has the row names)
row.names(Friendgroup)<-StarWars
#Just checking everything out
show(Friendgroup)
#Changed the name
Starwarsfriendranking<-(Friendgroup)
#Lab Step #16-22
#Lab Step 16
Friendgroup[3,]
#Lab step 17
Friendgroup[,4]
#Lab step 18
Friendgroup[6,2]
#Lab step 19
Friendgroup[2,2]
#Lab step 20
Friendgroup[4:6,]
show(Friendgroup)
#Lab step #22
Friendgroup[4:6,c(2:3,5)]
#Lab step #23
Friendgroup[2,4]<-6
Friendgroup[5,4]<-7
#Lab step #24
Friendgroup["III","Penny"]
#Lab step #25 
Friendgroup["II","Lenny"]<-7
Friendgroup["V","Lenny"]<-6
show(Friendgroup)
#Lab step #25
Friendgroup$Lenny[2]<-6
Friendgroup$Lenny[6]<-5
show(Friendgroup)
str(Friendgroup)


