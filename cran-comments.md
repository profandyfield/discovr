## Version 1.0.0 notes

This is an update of an existing package.

## R CMD check results (win-builder)

* using log directory 'd:/RCompile/CRANguest/R-devel/discovr.Rcheck'
* using R Under development (unstable) (2026-02-04 r89376 ucrt)
* using platform: x86_64-w64-mingw32
* R was compiled by
    gcc.exe (GCC) 14.3.0
    GNU Fortran (GCC) 14.3.0
* running under: Windows Server 2022 x64 (build 20348)
* using session charset: UTF-8
* current time: 2026-02-05 10:04:24 UTC
* checking for file 'discovr/DESCRIPTION' ... OK
* checking extension type ... Package
* this is package 'discovr' version '1.0.0'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... [15s] OK
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking whether package 'discovr' can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking for future file timestamps ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking code files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking use of S3 registration ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... [13s] OK
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd line widths ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of 'data' directory ... OK
* checking data for non-ASCII characters ... OK
* checking LazyData ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking examples ... [22s] OK
* checking for unstated dependencies in 'tests' ... OK
* checking tests ... OK
  Running 'testthat.R'
* checking PDF version of manual ... [33s] OK
* checking HTML version of manual ... [33s] OK
* DONE
Status: OK

## R CMD check results (macbuilder)

* using log directory ‘/Volumes/PkgBuild/work/1770284745-13971fdfb2472e60/packages/sonoma-arm64/results/4.6/discovr.Rcheck’
* using R Under development (unstable) (2026-02-04 r89376)
* using platform: aarch64-apple-darwin23
* R was compiled by
    Apple clang version 17.0.0 (clang-1700.6.3.2)
    GNU Fortran (GCC) 14.2.0
* running under: macOS Tahoe 26.2
* using session charset: UTF-8
* checking for file ‘discovr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘discovr’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘discovr’ can be installed ... [3s/3s] OK
* checking installed package size ... INFO
  installed size is  8.3Mb
  sub-directories of 1Mb or more:
    tutorials   7.2Mb
* checking package directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking code files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... [1s/1s] OK
* checking whether the package can be loaded with stated dependencies ... [0s/0s] OK
* checking whether the package can be unloaded cleanly ... [0s/0s] OK
* checking whether the namespace can be loaded with stated dependencies ... [0s/0s] OK
* checking whether the namespace can be unloaded cleanly ... [1s/1s] OK
* checking loading without being on the library search path ... [0s/0s] OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... [2s/2s] OK
* checking Rd files ... [0s/0s] OK
* checking Rd metadata ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... [0s/0s] OK
* checking LazyData ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking examples ... [6s/6s] OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... [1s/1s] OK
  Running ‘testthat.R’ [1s/1s]
* checking PDF version of manual ... [5s/5s] OK
* DONE
Status: OK
* using check arguments '--no-clean-on-error '

* elapsed time (check, wall clock): 0:33