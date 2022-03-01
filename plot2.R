library(dplyr)
setwd("./Desktop/Coursera/Coursera R/exploratory_analysis/ExData_Plotting1")

# load data
power_consumption <- read.table("household_power_consumption.txt", header=TRUE, 
                                sep=";", na.strings = "?")
# Select data from dates 2007-02-01 and 2007-02-02
pow_consum_select <- subset(power_consumption, power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007")

# convert Global_active_power to numeric variable
pow_consum_select$Global_active_power <- as.numeric(pow_consum_select$Global_active_power)

# Convert the Date variable to Date class
pow_consum_select$Date <- as.Date(pow_consum_select$Date, format="%d/%m/%Y")

# Convert the Time variable to Time class
x <- paste(pow_consum_select$Date, pow_consum_select$Time)
pow_consum_select$DateTime <- strptime(x, format ="%Y-%m-%d %H:%M:%S") 
# Change locality 
Sys.setlocale("LC_TIME", "C")

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