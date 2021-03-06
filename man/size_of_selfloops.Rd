% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/size_of_selfloops.R
\name{size_of_selfloops}
\alias{size_of_selfloops}
\title{Metric: Size of selfloops}
\usage{
size_of_selfloops(eventlog, type = c("repeat", "redo"),
  level_of_analysis = c("log", "case", "activity", "resource",
  "resource-acitivty"))
}
\arguments{
\item{eventlog}{The event log to be used. An object of class
\code{eventlog}.}

\item{type}{Type of selfloops. I.e. repeat or redo}

\item{level_of_analysis}{At which level the analysis of selfloops should be performed: log, case, activity, resource, resource activity.}
}
\description{
Provides summary statistics on the sizes of selfloops at the level of activity types, cases, traces or log. A selfloop of size x refers to the occurrence of x consecutive events
of that activity type.
}
