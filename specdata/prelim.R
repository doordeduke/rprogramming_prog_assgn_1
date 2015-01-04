prelim <- function(directory,id = 1:332)     {
        files <- list.files(directory)
        select_id <- id
        dat <- data.frame()
        for (i in select_id) {
        dat <- rbind(dat, read.csv(files[i]))
}
}