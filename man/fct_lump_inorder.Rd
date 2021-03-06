% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lump_inorder.R
\name{fct_lump_inorder}
\alias{fct_lump_inorder}
\title{Lump together into "other" levels of a factor appearing after the N first (or prior to the N last)}
\usage{
fct_lump_inorder(f, n = 1, other_level = "Other")
}
\arguments{
\item{f}{A factor (or character vector).}

\item{n}{If \code{n} is missing, \code{fct_lump_inorder} lumps
together all but the first appearing level into "other".

Positive \code{n} preserves the first appearing \code{n} levels.
Negative \code{n} preserves the last appearing \code{n} levels.}

\item{other_level}{Value of level used for "other" values.}
}
\description{
Lump together into "other" levels of a factor appearing after the N first (or prior to the N last)
}
\examples{
library(magrittr)
library(forcats)
f <- c("hello","goodbye","ciao","arrivederci","ciao","hello") \%>\% fct_inorder
f
#> [1] hello       goodbye     ciao        arrivederci
#> [5] ciao        hello
#> Levels: hello goodbye ciao arrivederci
# Preserve the first two appearing levels:
f \%>\% fct_lump_inorder(2)
#> [1] hello       goodbye     Other       Other
#> [5] Other        hello
#>Levels: hello goodbye Other
# Preserve the last two appearing levels, reversing order of levels:
f \%>\% fct_lump_inorder(-2)
#> [1] Other       Other     ciao       arrivederci
#> [5] ciao        Other
#>Levels: arrivederci ciao Other

}
\seealso{
\code{\link[=fct_other]{fct_other()}} to convert specified levels to other.

\code{\link[=fct_lump]{fct_lump()}} to convert low-frequency levels to other.
}
