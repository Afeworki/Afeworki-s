##==========//Peer-graded Assignment: Course Project 1//==========##

#data loaded from the RStudio "File/Import Dataset" option.

CaseData <- household_power_consumption [66637:69516, ] #subset
View(CaseData)

par(mfrow = c(2, 2)) # Create a 2 x 2 plotting matrix
# The next 4 plots created will be plotted next to each other

# Plot 1
plot(y = CaseData$Global_active_power
     , x = strptime(CaseData$Time, "%H:%M:%S")
     , xlab = "", ylab = "Global Active Power") 
     
# Plot 2
plot(y = CaseData$Voltage
     , x = strptime(CaseData$Time, "%H:%M:%S")
     , xlab = "datetime", ylab = "Voltage") 

# Plot 3
plot(CaseData$Sub_metering_1
      , x = strptime(CaseData$Time, "%H:%M:%S")
      , xlab = "", ylab = "Energy sub metering")  
lines(CaseData$Sub_metering_2, col = "red")  
lines(CaseData$Sub_metering_3, col = "blue")  

legend("topright", pch = 1, col = c("black", "red", "blue")
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot 4
plot(y = CaseData$Global_reactive_power
     , x = strptime(CaseData$Time, "%H:%M:%S")
     , xlab = "datetime", ylab = "Global_reactive_power") 

## the plot was saved in a PNG file with a width of 480 pixels and 
## a height of 480 pixels is set from the "Export" option in the plots tab
## of RStudio interface.
