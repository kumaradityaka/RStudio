first_df<-read.csv("C:/Users/Rudra/Desktop/First.csv",header = TRUE,as.is = TRUE)
second_df<-read.csv("C:/Users/Rudra/Desktop/Second.csv",header = TRUE,as.is = TRUE)  
library(dplyr)  
new_df<-inner_join(first_df,second_df)
df_1<-left_join(first_df,second_df)
Scholarship<-c("Yes","No","Yes","No","Yes")
cbind(new_df,Scholarship)
new_row<-c("AKS",126,"CSE",95,20,"Basketball","No")
rbind(new_df,new_row)
sub_df<-subset(new_df,Sports_category=="Volleyball")
new_df[5,4]<-93
new_df[-4,]
library(reshape2)
new_df_recast<-recast(new_df,variable+Name~Program,id.var = c("Name","Program"))
new_df[order(new_df$Marks,decreasing = FALSE)]
