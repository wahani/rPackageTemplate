library(templatePackage)
tmpData <- data.frame(id = 1:10, x = rnorm(10))
write.table(tmpData, "data/tmpData.txt")