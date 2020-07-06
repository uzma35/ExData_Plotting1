
##converting Date and Time variables from characters to objects

subpower_con$Date <- as.Date(subpower_con$Date, format="%d/%m/%Y")
subpower_con$Time <- strptime(subpower_con$Time, format="%H:%M:%S")
subpower_con[1:1440,"Time"] <- format(subpower_con[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower_con[1441:2880,"Time"] <- format(subpower_con[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


##basic plot

plot(subpower_con$Time,as.numeric(as.character(subpower_con$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

##annotating plot

title(main="Global Active Power Vs Time")

##saving output

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()

cat("saving Plot2.png in", getwd())