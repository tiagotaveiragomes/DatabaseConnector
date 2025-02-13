% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBI.R
\name{dbAppendTable,DatabaseConnectorConnection,character,data.frame-method}
\alias{dbAppendTable,DatabaseConnectorConnection,character,data.frame-method}
\title{Insert rows into a table}
\usage{
\S4method{dbAppendTable}{DatabaseConnectorConnection,character,data.frame}(
  conn,
  name,
  value,
  temporary = FALSE,
  oracleTempSchema = NULL,
  tempEmulationSchema = getOption("sqlRenderTempEmulationSchema"),
  ...,
  row.names = NULL
)
}
\arguments{
\item{conn}{A \linkS4class{DBIConnection} object, as returned by
\code{\link[DBI:dbConnect]{dbConnect()}}.}

\item{name}{Name of the table, escaped with \code{\link[DBI:dbQuoteIdentifier]{dbQuoteIdentifier()}}.}

\item{value}{A data frame of values. The column names must be consistent
with those in the target table in the database.}

\item{temporary}{Should the table created as a temp table?}

\item{oracleTempSchema}{DEPRECATED: use \code{tempEmulationSchema} instead.}

\item{tempEmulationSchema}{Some database platforms like Oracle and Impala do not truly support temp tables. To
emulate temp tables, provide a schema with write privileges where temp tables
can be created.}

\item{...}{Other arguments used by individual methods.}

\item{row.names}{Must be \code{NULL}.}
}
\description{
The \code{dbAppendTable()} method assumes that the table has been created
beforehand, e.g. with \code{\link[DBI:dbCreateTable]{dbCreateTable()}}.
The default implementation calls \code{\link[DBI:sqlAppendTableTemplate]{sqlAppendTableTemplate()}} and then
\code{\link[DBI:dbExecute]{dbExecute()}} with the \code{param} argument. Backends compliant to
ANSI SQL 99 which use \verb{?} as a placeholder for prepared queries don't need
to override it. Backends with a different SQL syntax which use \verb{?}
as a placeholder for prepared queries can override \code{\link[DBI:sqlAppendTable]{sqlAppendTable()}}.
Other backends (with different placeholders or with entirely different
ways to create tables) need to override the \code{dbAppendTable()} method.
}
\details{
The \code{row.names} argument is not supported by this method.
Process the values with \code{\link[DBI:sqlRownamesToColumn]{sqlRownamesToColumn()}} before calling this method.
}
\seealso{
Other DBIConnection generics: 
\code{\link[DBI]{DBIConnection-class}},
\code{\link[DBI]{dbCreateTable}()},
\code{\link[DBI]{dbDataType}()},
\code{\link[DBI]{dbDisconnect}()},
\code{\link[DBI]{dbExecute}()},
\code{\link[DBI]{dbExistsTable}()},
\code{\link[DBI]{dbGetException}()},
\code{\link[DBI]{dbGetInfo}()},
\code{\link[DBI]{dbGetQuery}()},
\code{\link[DBI]{dbIsReadOnly}()},
\code{\link[DBI]{dbIsValid}()},
\code{\link[DBI]{dbListFields}()},
\code{\link[DBI]{dbListObjects}()},
\code{\link[DBI]{dbListResults}()},
\code{\link[DBI]{dbListTables}()},
\code{\link[DBI]{dbReadTable}()},
\code{\link[DBI]{dbRemoveTable}()},
\code{\link[DBI]{dbSendQuery}()},
\code{\link[DBI]{dbSendStatement}()},
\code{\link[DBI]{dbWriteTable}()}
}
