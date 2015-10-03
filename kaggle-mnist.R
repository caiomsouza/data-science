
# kaggle mnist
# https://www.kaggle.com/c/digit-recognizer

kaggle_mnist <- read.csv("./data//letterdata.csv")

kaggle_mnist$label <- as.factor(kaggle_mnist$label) 
letters_classifier_kaggle <- svm(label ~ ., data = kaggle_mnist)
  
# finalizar 

str(letters)