# Assignment (week 4)

# The goal of your project is to predict the manner in which they did the exercise. 
# This is the "classe" variable in the training set. 
# You may use any of the other variables to predict with. You should create a report 
# describing how you built your model, how you used cross validation, what you think 
# the expected out of sample error is, and why you made the choices you did. 
# You will also use your prediction model to predict 20 different test cases.

# Training
train.file <- "a4_train.RData"
test.file <- "a4_test.RData"
training <- data.frame()
testing <- data.frame()

if (!file.exists(train.file)) {
  training <- read.csv(url("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"))
  saveRDS(training, file=train.file)
} else {
  training <- readRDS(train.file)
  message("read cached", train.file)
}

# Testing
if (!file.exists(test.file)) {
  testing <- read.csv(url("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"))
  saveRDS(testing, file=test.file)
} else {
    testing <- readRDS(test.file)
    message("read cached", test.file)
}

# Source
# http://groupware.les.inf.puc-rio.br/har
