
##setting layout for combining plots
par(mfrow=c(2,2))

##basic plot function, which combines 4 plots

with(subpower_con,{
  plot(subpower_con$Time,as.numeric(as.character(subpower_con$Global_active_power)),type="l",  xlab="",ylab="Global Active Power")  
  plot(subpower_con$Time,as.numeric(as.character(subpower_con$Voltage)), type="l",xlab="datetime",ylab="Voltage")
  plot(subpower_con$Time,subpower_con$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
  with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_1))))
  with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
  with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
  legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
  plot(subpower_con$Time,as.numeric(as.character(subpower_con$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")
})

##saving output

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
cat("plot4.png has been saved in", getwd())
