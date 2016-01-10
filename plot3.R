##plot 3 - time series plot for three sub_metering variables. Use bty="n" to set the legend without borderline. 
with(data_time, {
  plot(Sub_metering_1 ~ DateTime, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = 'Red')
  lines(Sub_metering_3 ~ DateTime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
