# Exploratory Data Analysis - Programming Assignment 1
#
# plot3.R - script to create file plot3.png
#
# Tiago T. V. Vinhoza
# June 8, 2014

source("ProcessData.R")

if(!exists("PowerConsumption")){
  
  filename = "exdata-data-household_power_consumption.zip"
  PowerConsumption <- ProcessData(filename)
  
}

png(filename = "plot3.png",width = 480, height = 480, units = "px")
plot(PowerConsumption$Sub_metering_1,type="n",xaxt='n', xlab="", ylab="Energy Sub metering")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Sub_metering_1)
lines(PowerConsumption$Sub_metering_2,col="red")
lines(PowerConsumption$Sub_metering_3,col="blue")
legend("topright",lty=1, col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
