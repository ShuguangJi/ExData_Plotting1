##download data set to working directory and unzip
if(!file.exists('data.zip'))
{
  url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  download.file(url,destfile = "data.zip")
}
unzip("data.zip")

##read data set and subset the data only from 2007-02-01 and 2007-02-02
temp<-file("household_power_consumption.txt")
data<- read.table(text = grep("^[1,2]/2/2007", readLines(temp), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

##plot 1 - hsitogram of global active power
hist(data$Global_active_power,xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col="red")

##save plot to png - width=480, height=480, res=1200 (resolution is 1200)
png("plot1.png")
hist(data$Global_active_power,xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col="red", width=480,height=480,res=1200)
dev.off()