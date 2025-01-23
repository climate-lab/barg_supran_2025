library(tidyverse)
library(here)

weight_fractions <- function(funders, centers, rm_no_disclosure = FALSE){
  # First, normalize the influence across centers.
  weighted_influence <- centers %>%
    # filter(abbr %in% funders$abbr) %>%
    mutate(share = hits/sum(hits))
  
  weighted_fractions <- funders %>%
    group_by(abbr, ff, industry) %>%
    # Then, get every industry's share of every center's influence.
    summarize(n = n(), .groups = "drop") %>%
    full_join(weighted_influence, by = "abbr") %>%
    mutate(industry = if_else(is.na(industry), "No disclosure", industry)) %>%
    group_by(abbr) %>%
    # Make sure we also get the weighted fraction if there are no disclosed funders for a center.
    mutate(ind_share = if_else(industry == "No disclosure", 1, n/sum(n))) %>%
    ungroup() %>%
    # Multiply the industry's share of each center with the center's influence.
    mutate(weighted_fraction = ind_share * share)
  
  if (rm_no_disclosure) {
    weighted_fractions %>%
      filter(industry != "No disclosure") %>%
      # Now we need to normalize again
      mutate(disclosure = sum(weighted_fraction)) %>%
      mutate(weighted_fraction = weighted_fraction / disclosure) %>%
      select(-disclosure)
  } else {
    weighted_fractions
  }
}
