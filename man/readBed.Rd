\name{readBed}
\alias{readBed}
\title{
This is a function to read BED files.
}
\description{
This function can be used the read BED files in the standard format into R.
}
\usage{
readBed(bed.file = NULL)
}

\arguments{
  \item{bed.file}{
Character string with the path of the BED file which the data are to be read from. If no path is provided, the function \code{\link[base]{file.choose}} is called to interactively load the file.
}
}

\author{
Michael Bockmayr and Jan Budczies
}

\examples{
\dontrun{dset <- readBed()}
}

