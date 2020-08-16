#Reading Dates
 date1<- readline(prompt = "Enter the date:")
 d1<-as.Date(date1)
date2<- readline(prompt = "Enter the other date:")
d2<-as.Date(date2)
#Difference
diff<-d1-d2
diff
diff<-d2-d1
diff
#Addition and MMultiplication gives error
add<-d2+d1
mul<- d1*d2
#No. of days in a month
library(lubridate)
days.d1<-days_in_month(d1)
#weekday
w.d1<-weekdays.Date(d1)
#days elapsed
date3<-as.Date("1947-08-15")
days.elapsed<-Sys.Date()- date3
#Months elapsed
Me<- 12*(as.POSIXlt(Sys.Date())$year - as.POSIXlt(date)$year)+(as.POSIXlt(Sys.Date()$mon + as.POSIXlt(date)$mon)
#Years Elapsed
Ye<- (as.POSIXlt(Sys.Date())$year - as.POSIXlt(date)$year)    
#Timezone
IST<- now()
GMT<-now("GMT")                                                               
