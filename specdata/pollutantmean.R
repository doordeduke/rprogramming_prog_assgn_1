pollutantmean <- function(directory, pollutant, id = 1:332)     {
        files <- list.files(directory, full.names = TRUE)
        select_id <- id
        dat <- data.frame()
        for (i in select_id) {
                dat <- rbind(dat, read.csv(files[i]))
}
        mean(dat[, pollutant], na.rm = TRUE)
}
