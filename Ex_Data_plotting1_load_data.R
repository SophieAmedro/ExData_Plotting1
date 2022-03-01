library(dplyr)
setwd("./Desktop/Coursera/Coursera R/exploratory_analysis/ExData_Plotting1")

# load data
power_consumption <- read.table("household_power_consumption.txt", header=TRUE, 
                                sep=";", na.strings = "?")
str(power_consumption)
dim(power_consumption)
# dataset has 2,0750259 rows and 9 columns

# Select data from dates 2007-02-01 and 2007-02-02
pow_consum_select <- subset(power_consumption, power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007")
str(pow_consum_select)

# Convert the Date variable to Date class
pow_consum_select$Date <- as.Date(pow_consum_select$Date, format="%d/%m/%Y")

# Convert the Time variable to Time class
x <- paste(pow_consum_select$Date, pow_consum_select$Time)
pow_consum_select$DateTime <- strptime(x, format ="%Y-%m-%d %H:%M:%S") 
# Change locality 
Sys.setlocale("LC_TIME", "C")
str(pow_consum_select)
