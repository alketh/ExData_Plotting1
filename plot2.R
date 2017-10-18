source("read_clean.R")

dd <- read_clean()

ylab <- "Global Active Power"

dd$dt <- lubridate::ymd_hms(paste(dd$date, dd$time))

png(filename = "plot2.png")
plot(dd$dt, dd$gap, ylab = paste(ylab, "(kilowatts)"), type = "l", xlab = "")
dev.off()
