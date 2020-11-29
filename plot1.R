#Reading, naming and subsetting power consumption data
power <- read.csv("C:/Users/carlo/Desktop/Data Scientist - John Hopkins University/4_Explorative Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()