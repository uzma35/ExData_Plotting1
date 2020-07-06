
##basic plot 

plot(subpower_con$Time,subpower_con$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subpower_con,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##annotating plot

title(main="Energy sub-metering")

##saving output

dev.copy(png, file="plot3.png", width=780, height=480)
dev.off()

cat("saving Plot3.png in", getwd())