\name{flowsPanel}
\alias{flowsPanel}
\title{
Simulation algorithm to calculate the number of required flows for a sequence panel in BED format.
}
\description{
This function calculates the number of required flows for a concrete amplicon panel. 
}
\usage{
flowsPanel(bed.table, genom, order.flows = c("T", "A", "C", "G"), 
           ret.seq = FALSE)
}

\arguments{
  \item{bed.table}{
A data frame corresponding to a BED file, which can be read into R with the function \code{\link{readBed}}.
}
  \item{genom}{
Genome to be used to extract the sequences. It should be in the BSgenome class. The genome corresponding to the UCSC hg19 build can be obtained from the package BSgenome.Hsapiens.UCSC.hg19 . 
}
  \item{order.flows}{
Character vector indicating the order of the nucleotides used to synthesize the complementary strand during semiconductor sequencing.
}
  \item{ret.seq}{
logical. If 'TRUE', a matrix containing the sequences extracted from the input BED file and the corresponding forward and backward flow sequence constructed during semiconductor sequencing is returned.  
}
}


\seealso{
\code{\link{readBed}}
}

\author{
Michael Bockmayr and Jan Budczies
}


\examples{

### Load the BED file using the readBed function or use the example dataset:

data(chp2,package="ionflows")

### Load the BSgenome from which the genomic sequences of the amplicons in
### the BED file are to be extracted from, for example the BSgenome.Hsapiens.UCSC.hg19
### package for the UCSC hg19 build, which should be priorly installed .

\dontrun{library(BSgenome.Hsapiens.UCSC.hg19)}

### Run flowsPanel

\dontrun{flowsPanel(chp2,BSgenome.Hsapiens.UCSC.hg19)}

### A BED file can also be directly loaded into R:

\dontrun{dset <- readBed("path/to/bed")}
\dontrun{flowsPanel(dset,genom)}
}

