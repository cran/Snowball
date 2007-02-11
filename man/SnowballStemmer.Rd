\name{SnowballStemmer}
\alias{SnowballStemmer}
\title{R/Weka Snowball Stemmer}
\description{
  R interface to Weka's Snowball stemmers.
}
\usage{
SnowballStemmer(x, control = NULL)
}
\arguments{
  \item{x}{a character vector with words to be stemmed.}
  \item{control}{an object of class \code{\link[RWeka]{Weka_control}},
    or a character vector of control options, or \code{NULL} (default).
    Available options can be obtained on-line using the Weka Option
    Wizard \code{\link[RWeka]{WOW}}, or the Weka documentation.}
}
\value{
  A character vector with the stemmed words.
}
\details{
  The Snowball stemmers contain the Porter stemmer and several other
  stemmers for different languages.  See
  \url{http://snowball.tartarus.org/} for more information.

  \code{SnowballStemmer} is an interface to Weka's wrapper classes for
  the Java version of the Snowball stemmers.  The corresponding jar
  cannot be included in package \pkg{RWeka} due to license restrictions,
  and hence is made available via the separate package \pkg{Snowball}.

  The Omegahat package \pkg{Rstem} provides an R interface to a C
  version of Porter's word stemming algorithm.
}
\seealso{
  Other R interfaces to Weka stemmers
  (\link[RWeka:RWeka_stemmers]{RWeka\_stemmers})
}
\examples{
## Test the supplied vocabulary for the default stemmer ('porter'):
source <- readLines(system.file("words", "porter","voc.txt",
                                package = "Snowball"))
result <- SnowballStemmer(source)
target <- readLines(system.file("words", "porter", "output.txt",
                                package = "Snowball"))
## Any differences?
any(result != target)
}
\keyword{character}
