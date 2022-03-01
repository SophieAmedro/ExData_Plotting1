# data
source("Ex_Data_plotting1_load_data.R")

# open png device and create plot2.png
png(filename = "plot2.png",width=480,height=480,units ="px")
# Plot 2
with(pow_consum_select, plot(x= pow_consum_select$DateTime, 
                             y= pow_consum_select$Global_active_power, 
                             type = "l",
                             xlab = " " ,
                             ylab="Global Active Power (kilowatts)"
                             ))
dev.off()