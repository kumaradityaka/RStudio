#Creating Data
library(lubridate)
sleep <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09",  
                                       "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27",  
                                       "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21",  
                                                                                   "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11",  
                                                                                   "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34,  
                                                                                                                                 7.42, 6.45))) 
#Calculate the mean time
library(psych)
bed.time <- sleep[,1]
rise.time <- sleep[,2]
sleep.time <- sleep[,3]
circadian.mean(hour(bed.time))
circadian.mean(hour(rise.time))
mean(sleep.time)
#strptime()
d1 <- "2020-08-25"  
s_d1<- strptime(d1,format = "%Y-%m-%d")
class(s_d1)
#Diff between Date, POSIct and POSIXlt
date.1 <- as.Date("2020-05-05") #Standard Format yy-mm-dd
date.2 <- as.Date("05/05/2020",format = "%m/%d/%Y")
date.3 <- as.Date("December 21, 2016", format = "%B %d, %Y")
date.4 <- as.Date(c("2016-12-21", "2017-12-21", "2018-12-21"))
date.5 <- seq(date.1, length = 10, by = "4 weeks")
#POSIXct
P.time <- as.POSIXct("2018-07-24 14:31:26")
P.time.1 <- as.POSIXct("24/07/2018 08:32:07", format = "%d/%m/%Y %H:%M:%S")
P.time.2 <- as.POSIXct("2010-12-01 11:42:03", tz = "GMT") #time zone
#POSIXlt
lt.time <- as.POSIXlt("2013-08-24 23:55:26")
lt.time$sec
lt.time$min
lt.time$yday
trunc(lt.time,"years") #truncate using the arguments
trunc(lt.time,"mins")
trunc(lt.time,"secs")
