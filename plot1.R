Data1<-read.table("household_power_consumption.txt", header = TRUE, sep=";",na.strings="?",nrows=70000)
Data2<-subset(Data1, Date=="1/2/2007" | Date=="2/2/2007")

png(filename = "plot1.png",width=480,height=480)
with(Data2,hist(Data2$Global_active_power,col='red',xlab="Global Active Power (kilowatts)",main="Global Active Power"))
dev.off()