\name{flowsRandom}
\alias{flowsRandom}

\title{
A function to compute the percentage of covered random sequences for a given number of flows.
}
\description{
Evaluation of an exact expression to obtain the percentage of all random nucleotide sequences of a given length (n) that can be sequenced with semiconductor sequencing given a certain number of flows (k).  
}
\usage{
flowsRandom(k = 300, n = 150)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{k}{
Integer. Number of flows available during semiconductor sequencing.
}
  \item{n}{
Integer. Length of the random sequences to be sequenced.
}
}

\value{
\item{P}{Percentage of sequences that are completely covered}
\item{Q}{Percentage of sequences that are not completely covered}
\item{delta}{1 - (P + Q), should be a small number when calculation is accurate}
\item{N}{Number of summands for calculation of P}
\item{M}{Number of summands for calculation of Q}
\item{summands}{ N + M = total number of summands }
}


\author{
Michael Bockmayr and Jan Budczies
}

\examples{
### To compute the percentage of covered sequences of length 150 with 300 flows run:

flowsRandom(300,150)
}
