

filter_endpoints_sets <- function(eventlog,
							 start_activities = NULL,
							 end_activities = NULL,
							 reverse = F) {

	colnames(eventlog)[colnames(eventlog)==activity_id(eventlog)] <- "event_classifier"

	if(is.null(start_activities) & is.null(end_activities)){
		stop("At least on start or end activity for filtering should be provided")
	}

	if(is.null(start_activities))
		start_activities <- unique(eventlog$event_classifier)
	if(is.null(end_activities))
		end_activities <- unique(eventlog$event_classifier)

	c_sum <- cases(eventlog = eventlog)
	colnames(c_sum)[colnames(c_sum)==case_id(eventlog)] <- "case_classifier"
	colnames(eventlog)[colnames(eventlog)==case_id(eventlog)] <- "case_classifier"

	case_selection <- filter(c_sum, first_activity %in% start_activities, last_activity %in% end_activities)$case_classifier

	if(reverse == FALSE)
		f_eventlog <- filter(eventlog, case_classifier %in% case_selection)
	else
		f_eventlog <- filter(eventlog, !(case_classifier %in% case_selection))

	colnames(f_eventlog)[colnames(f_eventlog)=="case_classifier"] <- case_id(eventlog)
	colnames(f_eventlog)[colnames(f_eventlog)=="event_classifier"] <- activity_id(eventlog)

	f_eventlog <- re_map(f_eventlog, mapping(eventlog))


	return(f_eventlog)

}
