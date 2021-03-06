% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/draw.R
\name{drawLine}
\alias{drawLine}
\title{Draw a Line on the Page}
\usage{
drawLine(x, y, opacity = .pkgenv$lineOpacity, lineColor = .pkgenv$lineColor,
  lineWidth = .pkgenv$lineWidth, lineType = .pkgenv$lineType,
  arrowAngle = .pkgenv$arrowAngle, arrowLength = .pkgenv$arrowLength,
  arrowUnits = .pkgenv$arrowUnits, arrowEnds = .pkgenv$arrowEnds,
  arrowType = .pkgenv$arrowType, units = .pkgenv$units, ...)
}
\arguments{
\item{x}{Numeric vector for the x-axis positions of the control points.}

\item{y}{Numeric vector for the y-axis positions of the control points.}

\item{opacity}{Numeric value for the transparency with values ranging from 0 (transparent) to 1 (non-transparent).}

\item{lineColor}{Character value for the color of the lines.}

\item{lineWidth}{Numeric value for the width of the lines.}

\item{lineType}{Character value for the line type. One of "blank", "solid", "dashed", "dotted", "dotdash", "longdash", or "twodash" (see "lty" in \link[graphics]{par}).}

\item{arrowAngle}{Numeric value of the angle for arrows. Smaller numbers create narrower arrows, and larger numbers produce wider arrows.}

\item{arrowLength}{Numeric value of the length for arrows.}

\item{arrowUnits}{Character value of the measurement unit for arrows.}

\item{arrowEnds}{Character value indicating which end to draw arrows on lines. Must be one of "last", "first" or "both".}

\item{arrowType}{Character value indicating if the arrow heads should be closed or open. Must be one of "open" or "closed".}

\item{units}{Character value for the \link[grid]{unit} to use when specifying measurements.}

\item{...}{Additional arguments passed to \link[grid]{grid.lines}.}
}
\value{
A \link[grid]{grid.lines} \link[grid]{grob} object.
}
\description{
Draws a line on the page given positioning, dimensions and styling.
\cr\cr
\if{html}{\figure{drawline.png}{options: width=250 alt="Figure: drawLine Example"}}
\if{latex}{\figure{drawline.png}{options: width=3in alt="Figure: drawLine Example"}}
}
\examples{
library(draw)

# Set drawing settings
drawSettings(pageWidth = 5, pageHeight = 5, units = "inches")

# Create a new drawing page
drawPage()

# Draw a solid line
drawLine(x = c(1, 4),
         y = c(1 ,1))

# Draw a dashed line
drawLine(x = c(1, 4),
         y = c(2 ,2),
         lineType = "dashed")

# Draw a dotted line with ending arrow
drawLine(x = c(1, 4),
         y = c(3 ,3),
         lineType = "dotted", arrowEnds = "last")

# Draw thick two dash line with starting arrow
drawLine(x = c(1, 4),
         y = c(4, 4),
         lineWidth = 3, lineType = "twodash", arrowEnds = "first")

# Export the drawing page to a PDF
drawExport("drawLine.pdf")

}
\seealso{
\link{drawSettings}
}
