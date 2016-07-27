# Function to compare models
Compare_Models <- function(this_model) {
  this_model_df <- as.data.frame(this_model)
  THIS <- ts(this_model_df$"Point Forecast", start=c(2014,1), end=c(2014,12), frequency=12)
  compareModels <- ts.union(TotalAsIs_2014, THIS)
  RMSE_THIS <- rmse(TotalAsIs_2014, THIS)
  return (RMSE_THIS)
}

# Compare SES
RMSE_SES <- Compare_Models(Model_ses)
RMSE_LINEAR <- Compare_Models(Model_holt_1)
RMSE_EXPO <- Compare_Models(Model_holt_2)
RMSE_DAMPED <- Compare_Models(Model_holt_3)
RMSE_DAMPEXPO <- Compare_Models(Model_holt_4)
RMSE_HW_ADD <- Compare_Models(Model_hw_1)
RMSE_HW_MUL <- Compare_Models(Model_hw_2)
