

------------------------------
setwd("nuoroda i ten, kur yra visi failai is antros uzduoties jusu kompiuteryje")

df <- read.csv("001.csv")
 View(df)
df[is.na(df)]=0
df1 <- as.numeric(df$sulfate)
df2 <- as.numeric(df$nitrate)
mean(df1)
median(df1)
mean(df2)
median(df2)



#Data Frame subsettingas
Vardai<- c("Zygis", "Akvile", "Angelina", "Tadas", "Tautvydas")
Gender <-c("M","F","F","M","M")
Ugis <- c(180,175,176,180,181)
Darbai <- c("Apskaita", "Mikro", "Matematika", "Duomenys", "Lietuviu")
Saunuoliai <- data.frame(Vardai,Ugis,Gender,Darbai)
#Subsettinu vyriskius
subset(Saunuoliai, Gender =="M")
#Subsettinu moteris
subset(Saunuoliai, Gender =="F")
#Subsettinu, kad ugis butu didesnis negu 175
subset(Saunuoliai, Ugis >175)
#Subsettinu, kad vyriskius ir ugis virs 180
subset(Saunuoliai, Gender=="M" & Ugis >180)
#Ugio vidurkis
#1 variantas is vektoriaus
mean(Ugis)
#2 variantas is data frame
mean(Saunuoliai[,2])
#Ugio mediana
#1 variantas is vektoriaus
median(Ugis)
#2 variantas is dataframe
median(Saunuoliai[,2])