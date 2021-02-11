# make the model
source("make_model.R")

#* @get /predict_purchase
function(EstimatedSalary=15000){
  classifier = svm(formula = Purchased ~ .,
                   data = training_set,
                   type = 'C-classification',
                   kernel = 'radial')
  
  # create the prediction data frames
  test_set[-3] = scale(test_set[-3])
  
  # create the prediction
  predict(classifier,newdata)
  
}