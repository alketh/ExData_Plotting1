source("read_clean.R")

dd <- read_clean()

dd$dt <- lubridate::ymd_hms(paste(dd$date, dd$time))

png(filename = "plot3.png")
plot(dd$dt, dd$sm1, col = "black", ylab = "Energy sub metering", type = "l", xlab = "")
lines(dd$dt, dd$sm2, col = "red")
lines(dd$dt, dd$sm3, col = "blue")
legend("topright", legend = paste0("Sub_metering_", 1:3), lty = c(1, 1, 1), col = c("black", "red", "blue"))
dev.off()
