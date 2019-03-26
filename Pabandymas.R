setwd("C:/Users/Tautvydas/Desktop/Duomenø analizë/Antra seminaro uzduotis")

df <- read.csv("001.csv")
 View(df)
df[is.na(df)]=0
df1 <- as.numeric(df$sulfate)
df2 <- as.numeric(df$nitrate)
mean(df1)
mean(df2)

