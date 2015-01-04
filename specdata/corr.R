corr <- function(directory, threshold = 0) {
        files <- list.files(directory, full.names = TRUE)
        results<- NULL
        dat <- data.frame()
        for (i in 1:332) {
                dat <- read.csv(files[i])
                nobs <- sum(complete.cases(dat))
                test<- ifelse(nobs >= threshold, cor(dat$nitrate, dat$sulfate, use = "na.or.complete"), NA)
                results<- c(results, test[complete.cases(test)])
        }
        results
}