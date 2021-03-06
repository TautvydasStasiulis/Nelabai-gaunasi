setwd("C:/Users/Tautvydas/Desktop/Studij� programa/Duomen� analiz�")
install.packages("readr")

str(data_table)
#----------------------------------------------------------------
x<-subset(data_table, data_table$`Gyvenamoji vietov�`=="Miestas ir kaimas") # i� vis� duomenu atsirinkau tik tai, kad paimtu miestas ir kaimas
#----------------------------------------------------------------
y<-subset(x,x$Lytis=="Vyrai ir moterys") # i� naujai sukurto data frame x isrenku tik tuos duomenis, kur lytis yra vyrai ir moterys
#----------------------------------------------------------------
class(y)<- "data.frame"
class(y)
vidurkiai<-tapply(y$Reik�m�,y$`Am�ius (tikslin�s am�iaus grup�s)`, mean)
vidurkis<-aggregate(y[ ,7], list(y$`Am�ius (tikslin�s am�iaus grup�s)`),mean)
#----------------------------------------------------------------

moterys<-subset(data_table,data_table$Lytis=="Moterys")
mot.vidurkis<-aggregate(moterys[ ,7], list(moterys$Laikotarpis),mean, na.rm=T)
plot(mot.vidurkis$Reik�m�, type="l", col="red", lwd=2, xlab="Data", ylab="Nedarbo lygis moterys %",ylim=c(0,30))
vyrai<-subset(data_table,data_table$Lytis=="Vyrai")
vyr.vidurkis<-aggregate(vyrai[ ,7], list(vyrai$Laikotarpis),mean, na.rm=T)
plot(vyr.vidurkis$Reik�m�, type="l", col="blue", lwd=2, xlab="Data", ylab="Nedarbo lygis vyrai %",ylim=c(0,30))
#----------------------------------------------------------------


bendras_grafikas<-c(1998:2018)
plot(bendras_grafikas,vyr.vidurkis$Reik�m�,type="l",lwd=2,col="blue",ylim=c(0,30))
lines(bendras_grafikas,mot.vidurkis$Reik�m�,col="red",lwd=2)
