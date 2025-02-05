# BGGMmod 2.0.1
This version of BGGMmod included changes based on the JOSS reviews: see [here](https://github.com/openjournals/joss-reviews/issues/2111) for 
the overview and [here](https://github.com/donaldRwilliams/BGGMmod/issues?q=is%3Aissue+is%3Aclosed) for specific issues.


# BGGMmod 2.0.0

**BGGMmod** was almost completely rewritten for version `2.0.0`. This was due to adding support 
for binary, ordinal, and mixed data, which required that the methods be written in `c ++`. 
Unfortunately, as a result, lots of code from version `1.0.0` is broken.

## Added features

* Full support for binary, ordinal, and mixed data. This is implemented with the argument `type`

* `roll_your_own`: compute custom network statistics from a weighted adjacency matrix or a partial 
correlation matrix

* `pcor_to_cor`: convert the sampled partial correlation matrices into correlation matrices. 

* `zero_order_cors`: compute zero order correlations 

* `convergence`: acf and trace plots

* `posterior_samples`: extract posterior samples

* `regression_summary`: summarize multivariate regression

* `pcor_sum`: Compute and compare partial correlation sums

* `weighted_adj_mat`: Extract the Weighted Adjacency Matrix

* `pcor_mat`: 	Extract the Partial Correlation Matrix

* Five additional data sets were added.

## Extensions
* `ggm_compare_ppc`: added option for custom network statistics

* Added option to control for variables with `formula`

* A progress bar was added to many functions


# BGGMmod 1.0.0

Initial CRAN release
