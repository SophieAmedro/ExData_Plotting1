# data
source("Ex_Data_plotting1_load_data.R")

# open png device and create plot3.png
png(filename = "plot3.png",width=480,height=480,units ="px")
# Plot 3
with(pow_consum_select, plot(x= pow_consum_select$DateTime, 
                             y= pow_consum_select$Sub_metering_1, 
                             type = "l",
                             xlab = " " ,
                             ylab="Energy sub metering"
))

lines(x= pow_consum_select$DateTime, 
      y= pow_consum_select$Sub_metering_2, 
      type = "l", col="red")

lines(x= pow_consum_select$DateTime, 
      y= pow_consum_select$Sub_metering_3, 
      type = "l", col="blue")
# legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "blue", "red"), lty =1)

dev.off()