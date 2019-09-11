##==========//Peer-graded Assignment: Course Project 1//==========##

#data loaded from the RStudio "File/Import Dataset" option.
CaseData <- household_power_consumption[66637:69516, ] #Data subseted with a name "CaseData" over a 2-day period in February, 2007
View(CaseData)
?strptime
hist(CaseData$Global_active_power)
View(CaseData)
str(CaseData)
CaseData$Global_active_power<-as.numeric(CaseData$Global_active_power)
str(CaseData)
hist(CaseData$Global_active_power)
hist(CaseData$Global_active_power, col = "red", xlab = "Global Active Power (Watts)", main = "Global Active Power", las=1, ylim = c(0, 1200), breaks=12)
hist(CaseData$Global_active_power, col = "red", xlab = "Global Active Power (Watts)", main = "Global Active Power", las=1, ylim = c(0, 1200), breaks=seq(from=0, to=6000, by=500), las=1)


## the plot was saved in a PNG file with a width of 480 pixels and 
## a height of 480 pixels is set from the "Export" option in the plots tab
## of RStudio interface.