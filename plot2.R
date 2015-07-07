data<- read.csv("household_power_consumption.txt",sep=";",na.string="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
data$Time<- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
data$Date<- as.Date(data$Date,"%d/%m/%Y")
png("plot2.png",width=480,height=480,unit="px")
plot(data$Time,data$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()