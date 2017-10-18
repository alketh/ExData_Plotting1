source("read_clean.R")

dd <- read_clean()

xlab <- "Global Active Power"

png(filename = "plot1.png")
hist(dd$gap, xlab = paste(xlab, "(kilowatts)"), main = xlab, col = "red")
dev.off()
