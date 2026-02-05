## Version 1.0.0 notes

This is an update of an existing package.

Installed size is 6.5Mb. This package contains learnr tutorials and associated data. I have minimized image/data files, but with 20 tutorials the total file sizes adds up, 
and because tutorials are self-contained there's duplication of (small) files across tutorials that is beyond my control. I can't see what else I can realistically do to make the package size smaller at this point in time 
so I request lenience.

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

## revdepcheck results

We checked 4 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages



## Resubmission
This is a resubmission. Thank you for the feedback. In this version I have:

* Explained acronyms in the DESCRIPTION.

* Added a \value to all .R files.

## Package size

Installed size is 6.5Mb. This package contains learnr tutorials and associated data. I have minimized image/data files, but with 20 tutorials the total file sizes adds up, 
and because tutorials are self-contained there's duplication of (small) files across tutorials that is beyond my control. I can't see what else I can realistically do to make the package size smaller at this point in time 
so I request lenience.

## R CMD check results (win-builder)

- Note: ANCOVA (16:54), EFA (17:70), RStudio (4:15, 11:49) are as intended.

* using log directory 'd:/RCompile/CRANguest/R-devel/discovr.Rcheck'
* using R Under development (unstable) (2025-05-30 r88253 ucrt)
* using platform: x86_64-w64-mingw32
* R was compiled by
    gcc.exe (GCC) 14.2.0
    GNU Fortran (GCC) 14.2.0
* running under: Windows Server 2022 x64 (build 20348)
* using session charset: UTF-8
* checking for file 'discovr/DESCRIPTION' ... OK
* checking extension type ... Package
* this is package 'discovr' version '0.2.0.3'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... [12s] NOTE
Maintainer: 'Andy Field <andyf@sussex.ac.uk>'

New submission

Possibly misspelled words in DESCRIPTION:
  ANCOVA (16:54)
  EFA (17:70)
  RStudio (4:15, 11:49)
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
* checking R code for possible problems ... OK
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
* checking examples ... [12s] OK
* checking for unstated dependencies in 'tests' ... OK
* checking tests ... OK
  Running 'testthat.R'
* checking PDF version of manual ... [15s] OK
* checking HTML version of manual ... [19s] OK
* DONE
Status: 1 NOTE


## R CMD check results (MacOS)

─  using R version 4.4.3 (2025-02-28)
─  using platform: x86_64-apple-darwin20
─  R was compiled by
       Apple clang version 14.0.0 (clang-1400.0.29.202)
       GNU Fortran (GCC) 12.2.0
─  running under: macOS Sequoia 15.5

❯ checking installed package size ... NOTE
    installed size is  6.5Mb
    sub-directories of 1Mb or more:
      tutorials   5.4Mb

❯ checking for future file timestamps ... NOTE
  unable to verify current time

0 errors ✔ | 0 warnings ✔ | 2 notes ✖

R CMD check succeeded
