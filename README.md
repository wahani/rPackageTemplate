Project description
========================================================

A template for R-Projects including a folder 'package' for R-package development.

Features:
--------------------------------------
* In 'Windows' `.libPaths()` will be set to `libWin` or to `libLinux` otherwise - see the file `.Rprofile`. This is necessary whenever you access your projects on a network drive from different platforms. In my case a Windows-Desktop and a RStudio-Server on Ubuntu. Installed packages will be ignored by git. If you do not think this necessary, it won't harm you.
* The folder `package` for a simple R-Package. On branch `Rcpp` the R-Package will depend on 'Rcpp' and 'RcppArmadillo' and will have a folder `src`. Some examples are included.
* .gitignore for R-Projects

Get Started:
--------------------------------------
1. Install [R](http://cran.r-project.org/)
2. Install [Rtools](http://cran.r-project.org/)
3. Install [RStudio](http://www.rstudio.com/)
4. Install [Git](http://git-scm.com/) alternatively [download](https://github.com/wahani/rPackageTemplate/archive/master.zip) this template as .zip archive.
5. clone or unpack the repository - [help](http://www.rstudio.com/ide/docs/version_control/overview)
6. [Package Development](http://www.rstudio.com/ide/docs/) - the package folder is set up already so you only have to click on 'Build and Reload' in RStudio

Useful Resources:
--------------------------------------
* [rtfm](http://cran.r-project.org/doc/manuals/r-release/R-exts.pdf)
* RStudio and package development: http://www.rstudio.com/ide/docs/
* Advanced R Programming: http://adv-r.had.co.nz/
* [Tutorial](http://cran.r-project.org/doc/contrib/Leisch-CreatingPackages.pdf)

[(Re-)Configure git](http://stackoverflow.com/questions/9683279/how-do-i-remove-all-version-history-for-a-git-github-repository):
--------------------------------------
* Step 1: remove all history
```
rm -rf .git
```
* Step 2: reconstruct the Git repo with only the current content
```
git init
git add .
git commit -m "Initial commit"
```
* Step 3: push to GitHub.
```
git remote add origin <github-uri>
git push -u --force origin master
```
