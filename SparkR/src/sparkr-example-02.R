# Installing SparkR
#https://amplab-extras.github.io/SparkR-pkg/

spark_path <- strsplit(system("brew info apache-spark",intern=T)[4],' ')[[1]][1] # Get your spark path
.libPaths(c(file.path(spark_path,"libexec", "R", "lib"), .libPaths())) # Navigate to SparkR folder

library(SparkR) # Load the library

sc <- sparkR.init(master="local")

#install.packages("SparkR")

#mtcars

# Create the DataFrame
df <- createDataFrame(sqlContext, mtcars)


sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
df <- createDataFrame(sqlContext, mtcars) 
head(df)
str(df)
summary(df)



