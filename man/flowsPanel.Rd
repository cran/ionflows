\name{flowsPanel}
\alias{flowsPanel}
\title{
Simulation algorithm to calculate the number of required flows for a sequence panel in BED format.
}
\description{
This function calculates the number of required flows for a concrete amplicon panel. 
}
\usage{
flowsPanel(bed.table, order.flows = c("T", "A", "C", "G"), 
           genom = BSgenome.Hsapiens.UCSC.hg19, ret.seq = FALSE)
}

\arguments{
  \item{bed.table}{
A data frame corresponding to a BED file, which can be read into R with the function \code{\link{readBed}}.
}
  \item{order.flows}{
Character vector indicating the order of the nucleotides used to synthesize the complementary strand during semiconductor sequencing.
}
  \item{genom}{
Genome to be used to extract the sequences. It should be in the BSgenome class. The default corresponds to the UCSC hg19 build. 
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

### Run flowsPanel

flowsPanel(chp2[1:5,])

### A BED file can also be directly loaded into R:

\dontrun{dset <- readBed("path/to/bed")}
\dontrun{flowsPanel(dset)}
}

