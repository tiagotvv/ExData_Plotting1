# Exploratory Data Analysis - Programming Assignment 1
#
# plot2.R - script to create file plot2.png
#
# Tiago T. V. Vinhoza
# May 11, 2014

source("ProcessData.R")

if(!exists("PowerConsumption")){
  
  filename = "exdata-data-household_power_consumption.zip"
  PowerConsumption <- ProcessData(filename)
  
}


png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(PowerConsumption$Global_active_power,type="n", xaxt='n', xlab="", ylab="Global Active Power (kilowatts)")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Global_active_power)
dev.off()