dat <- data.frame()
for (i in 001:332) {
        dat <- rbind(dat, read.csv(files[i]))
}