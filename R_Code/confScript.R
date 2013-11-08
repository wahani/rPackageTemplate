################################################################################
# Script for replacing and configure components of template                    #
################################################################################

# Replace 'templatePackage' with the new package name
################################################################################

newName <- "templatePackage"

files <- list.files(all.files = FALSE, full.names = TRUE, recursive = TRUE)

lapply(files, 
       function(file) {
         txtFile <- readLines(file)
         txtFile <- gsub(pattern="templatePackage", newName, x=txtFile)
         writeLines(txtFile, file)
       })

# Don't need src/Rcpp/RcppArmadillo
################################################################################

files <- list.files(path="package/src", full.names = TRUE)
file.remove(files, "package/src")

txt <- readLines("package/DESCRIPTION")
txt <- txt[-grep("Rcpp", txt)]
writeLines("package/DESCRIPTION", txt)

