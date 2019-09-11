##==========//Peer-graded Assignment: Course Project 1//==========##

#data loaded from the RStudio "File/Import Dataset" option.

CaseData <- household_power_consumption [66637:69516, ] #subset
View(CaseData)
plot(y = CaseData$Global_active_power
     , x = as.Date(CaseData$Date, "%d/%m/%y") #labeling x-axis in "Day"
     , xlab = "Date"
     , ylab = "Global Active Power (kilowatts)")
plot(y = CaseData$Global_active_power
     , x = strptime(CaseData$Time, "%H:%M:%S") #labeling x-axis in "Time"
     , xlab = "Time"
     , ylab = "Global Active Power (Watts)")     
plot(y = CaseData$Global_active_power
     , x = strptime(CaseData$Time, "%H:%M:%S")
     , type = "l"
     , xlab = "Time"
     , ylab = "Global Active Power (Watts)")  


## the plot was saved in a PNG file with a width of 480 pixels and 
## a height of 480 pixels is set from the "Export" option in the plots tab
## of RStudio interface.