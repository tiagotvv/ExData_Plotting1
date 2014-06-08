# Exploratory Data Analysis - Programming Assignment 1
#
# plot1.R - script to create file plot1.png
#
# Tiago T. V. Vinhoza
# June 8, 2014

source("ProcessData.R")

if(!exists("PowerConsumption")){
  
  filename = "exdata-data-household_power_consumption.zip"
  PowerConsumption <- ProcessData(filename)
  
}

png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(PowerConsumption$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
