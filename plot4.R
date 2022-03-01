# data
source("Ex_Data_plotting1_load_data.R")

# open png device and create plot4.png
png(filename = "plot4.png",width=480,height=480,units ="px")

par(mfrow = c(2, 2))

## Plot 1
with(pow_consum_select, plot(x= pow_consum_select$DateTime, 
                             y= pow_consum_select$Global_active_power, 
                             type = "l",
                             xlab = " " ,
                             ylab="Global Active Power"
))

## Plot 2
with(pow_consum_select, plot(x= pow_consum_select$DateTime, 
                             y= pow_consum_select$Voltage, 
                             type = "l",
                             xlab = "datetime" ,
                             ylab= "Voltage"
))

## Plot 3
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

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "blue", "red"), lty =1, box.lty=0)

## Plot 4
with(pow_consum_select, plot(x= pow_consum_select$DateTime, 
                             y= pow_consum_select$Global_reactive_power, 
                             type = "l",
                             xlab = "datetime" ,
                             ylab="Global_reactive_power"
))

dev.off()