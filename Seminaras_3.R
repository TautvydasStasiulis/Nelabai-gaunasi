setwd("C:/Users/Tautvydas/Desktop/Studijø programa/Duomenø analizë")
install.packages("readr")

str(data_table)
#----------------------------------------------------------------
x<-subset(data_table, data_table$`Gyvenamoji vietovë`=="Miestas ir kaimas") # ið visø duomenu atsirinkau tik tai, kad paimtu miestas ir kaimas
#----------------------------------------------------------------
y<-subset(x,x$Lytis=="Vyrai ir moterys") # ið naujai sukurto data frame x isrenku tik tuos duomenis, kur lytis yra vyrai ir moterys
#----------------------------------------------------------------
class(y)<- "data.frame"
class(y)
vidurkiai<-tapply(y$Reikðmë,y$`Amþius (tikslinës amþiaus grupës)`, mean)
vidurkis<-aggregate(y[ ,7], list(y$`Amþius (tikslinës amþiaus grupës)`),mean)
#----------------------------------------------------------------

moterys<-subset(data_table,data_table$Lytis=="Moterys")
mot.vidurkis<-aggregate(moterys[ ,7], list(moterys$Laikotarpis),mean, na.rm=T)
plot(mot.vidurkis$Reikðmë, type="l", col="red", lwd=2, xlab="Data", ylab="Nedarbo lygis moterys %",ylim=c(0,30))
vyrai<-subset(data_table,data_table$Lytis=="Vyrai")
vyr.vidurkis<-aggregate(vyrai[ ,7], list(vyrai$Laikotarpis),mean, na.rm=T)
plot(vyr.vidurkis$Reikðmë, type="l", col="blue", lwd=2, xlab="Data", ylab="Nedarbo lygis vyrai %",ylim=c(0,30))
#----------------------------------------------------------------


bendras_grafikas<-c(1998:2018)
plot(bendras_grafikas,vyr.vidurkis$Reikðmë,type="l",lwd=2,col="blue",ylim=c(0,30))
lines(bendras_grafikas,mot.vidurkis$Reikðmë,col="red",lwd=2)
