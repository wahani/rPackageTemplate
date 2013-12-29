################################################################################
# Script for replacing and configure components of template                    #
################################################################################

# Replace 'templatePackage' with the new package name
################################################################################

newName <- "templatePackage"

files <- list.files(all.files = FALSE, full.names = TRUE, recursive = TRUE)
files <- files[!grepl("libLinux|libWin|*.cpp|*.win|*.Rd", files) & grepl("package", files)]

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
txt <- txt[!grepl("Rcpp", txt)]
writeLines("package/DESCRIPTION", txt)

