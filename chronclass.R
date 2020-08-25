#chron class

#This class is a good option when you don't need to deal with timezones. 
#It requires the package chron.

#install.packages("chron"")
library(chron)
tm1.c <- as.chron("2013-07-24 23:55:26")
tm1.c

tm2.c <- as.chron("07/25/13 08:32:07", "%m/%d/%y %H:%M:%S")
tm2.c

#extract date
dates(tm2.c)

#compae times
tm2.c>tm1.c

version
#add days
tm2.c+10

# Calculate the difference between times

tm2.c-tm1.c

difftime(tm2.c, tm1.c, units = "min")

#does not adjust for daylight savings time

as.chron("2013-03-10 08:32:07") - as.chron("2013-03-09 23:55:26")


# Detach the chron package as it will interfere with lubridate
detach("package:chron", unload = TRUE)

#install.packages("lubridate")

# Summary of date/time classes
# When you just have dates, use Date.
# When you have times, POSIXct is usually the best,
# but POSIXlt enables easy extraction of specific components
# and chron is simplest when you don't need to deal with timezones 
# and daylight savings time.

#Manipulating times and dates with lubridate class
?circadian.mean()

