% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinyApp.R
\name{shinyCircos}
\alias{shinyCircos}
\title{Interactive visualisation of similar precursors}
\usage{
shinyCircos(similarityMatrix, msp, size = 400)
}
\arguments{
\item{similarityMatrix}{matrix, similarityMatrix contains pair-wise 
similarity coefficients which give information about the similarity between
precursors}

\item{msp}{MSP, an S4 object of class 'MSP' for information about 
the hovered feature}

\item{size}{numerical, image width/height in pixels}
}
\value{
shinyCircos returns a character vector with the selected 
precursors
}
\description{
Visualise similar precursors.
}
\details{
The function is based on the shiny and circlize package. Choose
interactively thresholds, type of links, hover over precursors, select 
precursors.
}
\examples{
data("idMSMStoMSP", package = "MetCirc")
## truncate files
finalMSP <- finalMSP[c(1:20, 29:48, 113:132, 240:259)]
data("binnedMSP", package = "MetCirc")
binnedMSP <- binnedMSP[c(1:20, 29:48, 113:132, 240:259),]
similarityMat <- createSimilarityMatrix(binnedMSP)
\dontrun{shinyCircos(similarityMat, finalMSP, size = 400)}
}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}

