read_clean <- function(file = "data/household_power_consumption.txt") {
  dd <- readr::read_delim(file = file, delim = ";")
  names(dd) <- c("date", "time", "gap", "grp", "voltage", "gi", "sm1", "sm2", "sm3")
  
  dd$date <- lubridate::dmy(dd$date)
  dd$y <- lubridate::year(dd$date)
  dd$m <- lubridate::month(dd$date)
  dd$d <- lubridate::day(dd$date)
  
  out <- dplyr::filter(dd, y == 2007)
  out <- dplyr::filter(out, m == 2)
  dplyr::filter(out, d >= 1 & d <= 2)
}
