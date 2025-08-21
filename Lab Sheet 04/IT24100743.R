setwd("C:\\Users\\IT24100743\\Desktop\\IT24100743")

getwd()

branch_data <- read.table("Exercise.txt", header = TRUE, sep =  ",")

#fix(data)

str(branch_data)

attach(branch_data)

boxplot(Sales_X1, main="Box plot for Sales", outline=TRUE, outpch=8, horizontal=TRUE)

summary(Advertising_X2)

IQR(Advertising_X2)


get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", ub))
  print(paste("Outiers:", paste(sort(z[z<lb | z>ub]), collapse = ",")))
}

get.outliers(Years_X3)