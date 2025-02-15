% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBI.R
\name{dbConnect,DatabaseConnectorDriver-method}
\alias{dbConnect,DatabaseConnectorDriver-method}
\title{Create a connection to a DBMS}
\usage{
\S4method{dbConnect}{DatabaseConnectorDriver}(drv, ...)
}
\arguments{
\item{drv}{The result of the \code{link{DatabaseConnectorDriver}} function}

\item{...}{Other parameters. These are the same as expected by the \code{\link{connect}} function.}
}
\value{
Returns a DatabaseConnectorConnection object that can be used with most of the other functions in
this package.
}
\description{
Connect to a database. This function is synonymous with the \code{\link{connect}} function. except
a dummy driver needs to be specified
}
\examples{
\dontrun{
conn <- dbConnect(DatabaseConnectorDriver(),
  dbms = "postgresql",
  server = "localhost/ohdsi",
  user = "joe",
  password = "secret"
)
querySql(conn, "SELECT * FROM cdm_synpuf.person;")
dbDisconnect(conn)
}

}
