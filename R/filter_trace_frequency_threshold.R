


filter_trace_frequency_threshold <- function(eventlog,
											  lower_threshold = NULL,
											  upper_threshold = NULL,
											  reverse = F){

	if(is.null(lower_threshold) & is.null(upper_threshold)){
		stop("Upper threshold or lower threshold must be defined")
	}
	if(is.null(lower_threshold))
		lower_threshold <- -Inf
	if(is.null(upper_threshold))
		upper_threshold <- Inf


	if(reverse == F)
		case_selection <- merge(cases_light(eventlog),
								trace_coverage(eventlog, "trace") %>%
									filter(absolute >= lower_threshold,
										   absolute <= upper_threshold))
	else
		case_selection <- merge(cases_light(eventlog),
								trace_coverage(eventlog, "trace") %>%
									filter(absolute < lower_threshold |
										   absolute > upper_threshold))


	colnames(eventlog)[colnames(eventlog)==case_id(eventlog)] <- "case_classifier"
	colnames(case_selection)[colnames(case_selection) == case_id(eventlog)] <- "case_classifier"


	output <- filter(eventlog,  case_classifier %in% case_selection$case_classifier)
	colnames(output)[colnames(output) == "case_classifier"] <- case_id(eventlog)


	output <- re_map(output, mapping(eventlog))


	return(output)

}
