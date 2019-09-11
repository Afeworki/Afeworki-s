##==========//Peer-graded Assignment: Course Project 1//==========##

#data loaded from the RStudio "File/Import Dataset" option.

CaseData <- household_power_consumption [66637:69516, ] #subset
View(CaseData)
str(CaseData)
CaseData$Sub_metering_1<-as.numeric(CaseData$Sub_metering_1)
CaseData$Sub_metering_2<-as.numeric(CaseData$Sub_metering_2)
CaseData$Sub_metering_3<-as.numeric(CaseData$Sub_metering_3)
str(CaseData)
lines(CaseData$Sub_metering_1
      , x = strptime(CaseData$Time, "%H:%M:%S")
      , xlab = "Time", ylab = "Energy sub metering"
      , ylim = c(0, max(CaseData$Sub_metering_1
                                              , CaseData$Sub_metering_2
                                              , CaseData$Sub_metering_3))) ## add first variable 
lines(CaseData$Sub_metering_2, col = "red")  ## add second variable
lines(CaseData$Sub_metering_3, col = "blue")  ## add third variable

legend("topright", pch = 1, col = c("black", "red", "blue")
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## the plot was saved in a PNG file with a width of 480 pixels and 
## a height of 480 pixels is set from the "Export" option in the plots tab
## of RStudio interface.