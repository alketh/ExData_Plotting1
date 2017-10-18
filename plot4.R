source("read_clean.R")

dd <- read_clean()

dd$dt <- lubridate::ymd_hms(paste(dd$date, dd$time))

png(filename = "plot4.png")
par(mfrow = c(2, 2))

# 1st plot in upper left corner
plot(dd$dt, dd$gap,     xlab = "",         ylab = "Global Active Power", type = "l")

# 2nd plot in upper right corner
plot(dd$dt, dd$voltage, xlab = "datetime", ylab = "Voltage",             type = "l")

# 3rd plot in lower left corner
plot(dd$dt, dd$sm1,     xlab = "",         ylab = "Energy sub metergin", type = "l", col = "black")
lines(dd$dt, dd$sm2, col = "red")
lines(dd$dt, dd$sm3, col = "blue")
legend("topright", legend = paste0("Sub_metering_", 1:3), lty = c(1, 1, 1), col = c("black", "red", "blue"))

# 4th plot in lower right corner
plot(dd$dt, dd$grp,     xlab = "datetime", ylab = "Global_reactive_power",             type = "l")

dev.off()
