#install.packages("caret")
library(caret)

dataset <- read.csv('../../../extractedData/details.csv', stringsAsFactors = FALSE, sep = ',')

dataset1<- dataset[-2]
dataset2<- dataset1[-2]

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x))) }

dataset2[2:15]<- as.data.frame(lapply(dataset2[2:15], normalize))

set.seed(3033)
intrain <- createDataPartition(y = dataset2$emotion, p= 0.7, list = FALSE)

training <- dataset2[intrain,]
testing <- dataset2[-intrain,]

training[["emotion"]]=factor(training[["emotion"]])

trctrl <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(3233)

svm_Linear <- train(emotion ~., data = training, method = "svmLinear",
                    trControl=trctrl,
                    preProcess = c("center", "scale"),
                    tuneLength = 10)

svm_Linear

test_pred <- predict(svm_Linear, newdata = testing)
#test_pred

confusionMatrix(test_pred,as.factor(testing$emotion))
