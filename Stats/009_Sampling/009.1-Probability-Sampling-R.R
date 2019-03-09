#============== Simple Random Sampling =======================
sample(c(FALSE,TRUE), 20, replace=TRUE, prob=c(0.2,0.8))

#============== Stratified Sampling / Ratio Sampling =========
library(dplyr)
set.seed(1)
sample_iris <- iris %>%
  group_by(Species) %>%
  sample_n(10)

sample_iris