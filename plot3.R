Data1<-read.table("household_power_consumption.txt", header = TRUE, sep=";",na.strings="?",nrows=70000)
Data2<-subset(Data1, Date=="1/2/2007" | Date=="2/2/2007")
newDate<- strptime(Data2$Date,format = "%d/%m/%Y")
Data2$Date<-as.Date(newDate)
Data2$DateTime<-strptime(paste(Data2$Date,Data2$Time),format = "%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png",width=480,height=480)
plot(Data2$DateTime, Data2$Sub_metering_1 ,type = "l", xlab="", ylab="Energy sub metering")
lines(Data2$DateTime,Data2$Sub_metering_2,col='red')
lines(Data2$DateTime,Data2$Sub_metering_3,col='blue')
legend("topright",lty=c(1,1,1),col=c('black','red','blue'),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()




