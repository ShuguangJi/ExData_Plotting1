##plot 4
par(mfrow=c(2,2),mar = c(4,4,2,1)) #mar is used to adjust margins of the subfigure. The third number makes the spacke between two rows wider.
with(data_time, {
  #1
  plot(data_time$Global_active_power ~ data_time$DateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  
  #2
  plot(data_time$Voltage ~ data_time$DateTime, type = "l", ylab = "Voltage", xlab = "datetime")
  
  #3
  plot(Sub_metering_1 ~ DateTime, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = 'Red')
  lines(Sub_metering_3 ~ DateTime, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  #4
  plot(data_time$Global_reactive_power ~ data_time$DateTime, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
})

##save plot4
dev.copy(png,'plot4.png')
dev.print(width = 480, height = 480, res=1200)
dev.off()
