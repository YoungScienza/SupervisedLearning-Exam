
install.packages("klaR")
install.packages("class")
install.packages("MASS")
install.packages("leaps")
install.packages("glmnet")
install.packages("pls")
install.packages("tree")
install.packages("randomForest")
install.packages("gbm")
install.packages("e1071")


library(klaR)
library(class)
library(MASS)
library(leaps)
library(glmnet)
library(pls)
library(tree)
library(randomForest)
library(gbm)
library(e1071)

source("misc.R")
predict.regsubsets<-function(object,newdata,id,...){
  form<-as.formula(object$call[[2]])
  mat<-model.matrix(form,newdata)
  coefi<-coef(object,id=id)
  y.hat<-mat[,names(coefi)]%*%coefi
  return(y.hat)
}
load("SecondSitting.RData")
~.~.

exp