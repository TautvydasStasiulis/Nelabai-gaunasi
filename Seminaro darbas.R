set.seed(101)
sales<- data.frame(row.names = month.abb[1:12],
                   Marry=sample(0:100,12,replace=TRUE),
                   John=sample(100:200,12,replace = TRUE),
                   Felix=sample(150:300,12,replace=TRUE),
                   Jenny=sample(0:400,12, replace = TRUE))

apply(sales, 2, sum)
apply(sales, 1, sum)
#-------------------
x<-apply(sales, 1, sum)
#-------------------
plot(x,type = "b")
#-------------------
y<-apply(sales,2,sum)
#-------------------
barplot(y)
#-------------------
boxplot(sales)
#-------------------
sales_mean<-apply(sales, 2, mean)
sales_sd<-apply(sales, 2, sd)
df1<-sweep(sales,2, sales_mean, "-")
df2<-sweep(df1,2,sales_sd,"/")
boxplot(df2)
#-------------------
lapply(sales,"sum") #matrica
#-------------------
sapply(sales,"sum") #vektorius
#-------------------
a<-rep(1,3)
b<-rep(2,3)
c<-rep(3,3)
mapply(sum,a,b,c)
#-------------------
z<-lapply(sales,"mean")
rapply(z, function(x){x*0.15})
#-------------------
head(airquality)
s<-split(airquality, airquality$Month)
sapply(s, function(x) colMeans(x[1:4], na.rm = T))
#-------------------

