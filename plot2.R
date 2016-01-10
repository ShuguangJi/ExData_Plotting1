##plot 2 - time series plot for global active power
#generate a minute interval time sequence.Becareful, don't use "Time" as the name of this sequence, since raw data set has this variable name already.
DateTime<-seq(as.POSIXct("2007-02-01 00:01:00"),as.POSIXct("2007-02-02 23:59:00"),by="min")
#add the generated time sequecy to data and get a new data set data_time
data_time<-data.frame(data,DateTime)

plot(data_time$Global_active_power ~ data_time$DateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

##save plot2 to png using another method
dev.copy(png,'plot2.png')
dev.print(width = 480, height = 480, res=1200)
dev.off()