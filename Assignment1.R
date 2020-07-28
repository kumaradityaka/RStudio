Names<-c("Ani","Tokyo","Denver","Patil")
Serial_no<-c(11,22,33,44)
Gender<-c("M","F","M","M")
Co_Test<-c("Yes","Yes","Yes","Yes")
Co_Result<-c("Positive","Positive","Negative","Positive")
df1<-data.frame("Names"=Names,"Serial no"=Serial_no,"Gender"=Gender)
df1
df2<-data.frame("Names"=Names,"Covid Test"=Co_Test,"Covid Result"=Co_Result)
library(dplyr)
df3<-full_join(df1,df2,by="Names")
df3
df3$count<-c("1","3","2","4")
df3
df_sub<-subset(df3,Names=="Patil"|Co_Result=="Yes")
df_sub
df3[3,2]<-55
df3
df3[-4,]
library(reshape2)
country<-c("India","USA","England","Germany")
month<-c("Jan","March","June","November")
Day_Temp<-c(40,32,18,22)
Night_Temp<-c(28,20,7,12)
df4<-data.frame("Country"=country,"Month"=month,"Day_Temp"=Day_Temp,"Night_Temp"=Night_Temp)
library(reshape2)
df5=melt(df4,id.vars=c("Country","Month"), measure.vars=c("Day_Temp","Night_Temp"))
df_dcast<-dcast(df5, variable+Month~Country,value.var = "value")
df_recast<-recast(df4,variable+Month~Country,id.var=c("Month","Country"))
