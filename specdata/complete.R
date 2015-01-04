complete <- function(directory, id = 1:332) {
        nobs <- NULL
        files <- list.files(directory, full.names = TRUE)
        select_id <- id
        for (i in select_id) {
                dat <- read.csv(files[i])
                nobs2 <- sum(complete.cases(dat))
                nobs <- c(nobs, nobs2)
        }
        results<- data.frame(id, nobs)
        results
}        