#' @title edeaR - Exploratory and Descriptive Event-based data Analysis in R
#'
#' @description This package provides several useful techniques for Exploratory and Descriptive analysis of event based data in R, developed by the Business Informatics Research Group of Hasselt University.
#'
#' @docType package
#' @name edeaR
#'
#' @import XML
#' @import xml2
#' @importFrom data.table data.table
#' @importFrom data.table :=
#' @importFrom data.table as.data.table
#' @import bupaR
#' @import dplyr
#' @import ggplot2
#' @import ggthemes
#' @import tibble
#' @import shiny
#' @import miniUI
#' @import tidyr
#' @import shinyTime
#' @import purrr
#' @importFrom lubridate ymd_hms
#' @importFrom glue glue
#' @importFrom stats median
#' @importFrom stats na.omit
#' @importFrom stats quantile
#' @importFrom stats sd
#' @importFrom utils head
#' @importFrom utils setTxtProgressBar
#' @importFrom utils txtProgressBar
#' @importFrom utils data

globalVariables(c(".N","event_classifier", "activity_group", "aid","first_activity","first_resource","last_activity","last_resource",
				  "activity_instance_classifier", "absolute_frequency", "Freq","q1", "q3","st_dev", "next_activity","nr_of_resources","same_activity",
				  "relative_trace_frequency", "case_classifier", "timestamp_classifier", "last_event", "absolute", "cum_sum", "event_concept.name",				  "event_time.timestamp", "case_concept.name", "first_event", "duration_in_days", "conditions_valid", "starts_with",
				  "duration", "start_timestamp","complete_timestamp", "complete","e","r","min_timestamp","max_rank","trace_id","act_freq",
				  "s","dur","start", "relative_frequency","tot_dur","number_of_repetitions","denom", "instance",
				  "total_length","perc", "relative","activity_frequency","absolute_trace_coverage","instances",
				  "cnt", "trace_frequency", "V1","V2",".","event_id","freq", "element_type", "min_r","max_r","endpoints",
				  "ts","next_event","resource_classifier","next_act","next_r","remove_next","present","diff_r","selfloop_group","include_non_selfloops",
				  "activate","active","activities","activity_id","activity_instance_id",
				  "case_id","cases","durations","n_cases","n_activities", "n_resources",
				  "mapping","eventlog","lifecycle_id","lifecycle_identifier","timestamp",
				  "t_length","spread","traces","as.formula",".SD","lag_cum_sum","next_ts","re_map", "resource_id","resources"))


NULL
