# data
source("Ex_Data_plotting1_load_data.R")

# open png device and create plot1.png
png(filename = "plot1.png",width=480,height=480,units ="px")
# Plot 1
with(pow_consum_select, hist(Global_active_power, col="red", 
                             ylab="Frequency",
                             xlab="Global Active Power (kilowatts)",
                             main="Global Active Power"))
dev.off()