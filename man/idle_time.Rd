% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/idle_time.R
\name{idle_time}
\alias{idle_time}
\title{Metric: Idle Time}
\usage{
idle_time(eventlog, level_of_analysis = c("log", "case", "trace", "resource"),
  units = c("hours", "days", "weeks", "mins"))
}
\arguments{
\item{eventlog}{The event log to be used. An object of class
\code{eventlog}.}

\item{level_of_analysis}{At which level the analysis of activity type frequency should be performed: log, trace, case, resource.}

\item{units}{Time units to be used}
}
\description{
Calculates the amount of time that no activity occurs for a case or for a resource. At log level it gives summary statistics of all cases in the log. At trace level it provides summary statistics of all cases related to this case.
'
}
