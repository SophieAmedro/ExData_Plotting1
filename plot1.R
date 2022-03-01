library(dplyr)
setwd("./Desktop/Coursera/Coursera R/exploratory_analysis/ExData_Plotting1")

# load data
power_consumption <- read.table("household_power_consumption.txt", header=TRUE, 
                                sep=";", na.strings = "?")
# Select data from dates 2007-02-01 and 2007-02-02
pow_consum_select <- subset(power_consumption, power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007")

# convert Global_active_power to numeric variable
pow_consum_select$Global_active_power <- as.numeric(pow_consum_select$Global_active_power)


# open png device and create plot1.png
png(filename = "plot1.png",width=480,height=480,units ="px")
# Plot 1
with(pow_consum_select, hist(Global_active_power, col="red", 
                             ylab="Frequency",
                             xlab="Global Active Power (kilowatts)",
                             main="Global Active Power"))
dev.off()