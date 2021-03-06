resource_specialisation_log <- function(eventlog) {


	resource_classifier <- resource_id(eventlog)
	event_classifier <- activity_id(eventlog)
	case_classifier <- case_id(eventlog)


	eventlog %>%
		group_by_(resource_classifier, event_classifier) %>%
		summarize() %>%
		summarize(freq = n()) -> raw

	raw %>%
		summarize(nr_of_activity_types = n_activities(eventlog),
				  min = min(freq),
				  q1 = quantile(freq, 0.25),
				  median = median(freq),
				  mean = mean(freq),
				  q3 = quantile(freq, 0.75),
				  max = max(freq),
				  st_dev = sd(freq)) %>%
		mutate(iqr = q3 - q1) -> output

	attr(output, "raw") <- raw

	return(output)

}
