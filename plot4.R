# Exploratory Data Analysis - Programming Assignment 1
#
# plot4.R - script to create file plot4.png
#
# Tiago T. V. Vinhoza
# June 8, 2014

source("ProcessData.R")

if(!exists("PowerConsumption")){
  
  filename = "exdata-data-household_power_consumption.zip"
  PowerConsumption <- ProcessData(filename)
  
}

# Setting up the plots
png(filename = "plot4.png",width = 480, height = 480, units = "px")
plot(PowerConsumption$Global_reactive_power,type="n", xaxt='n', xlab="datetime", ylab="Global Reactive Power (kilowatts)")
#
#lines(PowerConsumption$Global_reactive_power)
par(mfrow = c(2,2)) # Setting up space for 4 plots

# Making the plots
# First plot
plot(PowerConsumption$Global_active_power,type="n", xaxt='n', xlab="", ylab="Global Active Power")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Global_active_power)

# Second plot
plot(PowerConsumption$Voltage,type="n", xaxt='n', xlab="datetime", ylab="Voltage")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Voltage)

# Third plot
plot(PowerConsumption$Sub_metering_1,type="n",xaxt='n', xlab="", ylab="Energy Sub Metering")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Sub_metering_1)
lines(PowerConsumption$Sub_metering_2,col="red")
lines(PowerConsumption$Sub_metering_3,col="blue")
legend("topright",lty=1, col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Fourth plot
plot(PowerConsumption$Global_reactive_power,type="n", xaxt='n', xlab="datetime", ylab="Global Reactive Power")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
lines(PowerConsumption$Global_reactive_power)
dev.off()
