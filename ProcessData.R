# Exploratory Data Analysis - Programming Assignment 1
#
# ProcessData.R - function to perform preprocessing on the dataset
#
# Tiago T. V. Vinhoza
# May 11, 2014

ProcessData <- function(filename){
#
# Input: filename = "exdata-data-household_power_consumption.zip" with raw data
# Output: dataframe PowerConsumption with records from 1/2/2007 and 2/2/2007
#
  
unzip("exdata-data-household_power_consumption.zip")
  
# Reading file  
PowerConsumption_init <- read.table(file="household_power_consumption.txt",sep=";",head=TRUE)

# Selecting entries of interest from 1/2/2007 and 2/2/2007
PowerConsumption <- PowerConsumption_init[(PowerConsumption_init$Date == "1/2/2007" | PowerConsumption_init$Date == "2/2/2007"),]

## Converting "?" to "NA"
PowerConsumption$Global_reactive_power[PowerConsumption$Global_reactive_power == "?"] <- NA
PowerConsumption$Global_active_power[PowerConsumption$Global_active_power == "?"] <- NA
PowerConsumption$Sub_metering_1[PowerConsumption$Sub_metering_1 == "?"] <- NA
PowerConsumption$Sub_metering_2[PowerConsumption$Sub_metering_2 == "?"] <- NA
PowerConsumption$Sub_metering_3[PowerConsumption$Sub_metering_3 == "?"] <- NA
PowerConsumption$Voltage[PowerConsumption$Voltage == "?"] <- NA

# Converting the features from factor to numeric
PowerConsumption$Global_active_power <- as.numeric(as.character(PowerConsumption$Global_active_power))
PowerConsumption$Global_reactive_power <- as.numeric(as.character(PowerConsumption$Global_reactive_power))
PowerConsumption$Sub_metering_1 <- as.numeric(as.character(PowerConsumption$Sub_metering_1))
PowerConsumption$Sub_metering_2 <- as.numeric(as.character(PowerConsumption$Sub_metering_2))
PowerConsumption$Sub_metering_3 <- as.numeric(as.character(PowerConsumption$Sub_metering_3))
PowerConsumption$Voltage <- as.numeric(as.character(PowerConsumption$Voltage))

PowerConsumption
}
