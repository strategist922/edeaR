% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_activity_frequency.R
\name{filter_activity_frequency}
\alias{filter_activity_frequency}
\alias{ifilter_activity_frequency}
\title{Filter: Activity frequency}
\usage{
filter_activity_frequency(eventlog, percentile_cut_off = 0.8, reverse = F)

ifilter_activity_frequency(eventlog)
}
\arguments{
\item{eventlog}{The event log to be used. An object of class
\code{eventlog}.}

\item{percentile_cut_off}{The target coverage of events
A percentile of 0.9 will return the most common activity types of the eventlog, which account for 90\% of the events.}

\item{reverse}{A logical parameter depicting whether the selection should be reversed.}
}
\description{
Filters the log based on its most frequent activities, until a specific percentile cut off.
}
