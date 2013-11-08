.First <- function() {
  if (grepl("Windows", Sys.getenv("OS")))
    .libPaths(paste(getwd(), "libWin", sep = "/")) else {
      .libPaths(paste(getwd(), "libLinux", sep = "/"))
    }
}
.First()