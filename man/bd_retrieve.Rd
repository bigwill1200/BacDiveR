% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bd_retrieve.R, R/bd_retrieve_by_culture.R,
%   R/bd_retrieve_by_sequence.R, R/bd_retrieve_taxon.R
\name{bd_retrieve}
\alias{bd_retrieve}
\alias{bd_retrieve_by_culture}
\alias{bd_retrieve_by_sequence}
\alias{bd_retrieve_taxon}
\title{Retrieve (a) Dataset(s) from BacDive}
\usage{
bd_retrieve(id)

bd_retrieve_by_culture(collection_no)

bd_retrieve_by_sequence(accession)

bd_retrieve_taxon(name)
}
\arguments{
\item{id}{Mandatory character string or integer. The BacDive strain ID
whose data you want to retrieve.}

\item{collection_no}{Mandatory character string. A culture collection
number by which the associated dataset(s) will be retrieved.}

\item{accession}{Mandatory character string. A sequence accession number by
which the associated dataset(s) will be retrieved.}

\item{name}{Mandatory character string, specifying the taxon. Abbreviations
like "B. halotolerans" are not allowed!}
}
\value{
A (large) list containing either a single BacDive dataset in case
your parameter / search was unambiguous, or if ambiguous: all matching datasets.
Read \href{https://bacdive.dsmz.de/api/bacdive/}{BacDive.DSMZ.de/api/bacdive}
to learn more.
}
\description{
Retrieve (a) Dataset(s) from BacDive
}
\examples{
dataset_717 <- bd_retrieve(id = 717)
dataset_717 <- bd_retrieve(id = "717")
dataset_DSM_319 <- bd_retrieve_by_culture(collection_no = "DSM 319")
dataset_AJ000733 <- bd_retrieve_by_sequence(accession = "AJ000733")
datasets_Bh <- bd_retrieve_taxon(name = "Bacillus halotolerans")
datasets_Thh <- bd_retrieve_taxon(name = "Tetragenococcus halophilus halophilus")
}
