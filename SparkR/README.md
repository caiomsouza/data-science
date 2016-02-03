# R on Spark

SparkR is an R package that provides a light-weight frontend to use Spark from R.<BR>
https://github.com/amplab-extras/SparkR-pkg<BR>

#Six lines to install and start SparkR on Mac OS X Yosemite<BR>
http://www.r-bloggers.com/six-lines-to-install-and-start-sparkr-on-mac-os-x-yosemite/

One line for Spark and SparkR<BR>
Apache Spark is a fast and general-purpose cluster computing system<BR>

SparkR is an R package that provides a light-weight frontend to use Apache Spark from R<BR>

#Six lines to start SparkR
The first three lines should be called in your command line.<BR>

brew update # If you don't have homebrew, get it from here (http://brew.sh/)<BR>
brew install hadoop # Install Hadoop<BR>
brew install apache-spark # Install Spark<BR>
You can already start SparkR shell by typing this in your command line;<BR>

SparkR<BR>
If you like to call it from RStudio, execute the rest in R<BR>

spark_path <- strsplit(system("brew info apache-spark",intern=T)[4],' ')[[1]][1] # Get your spark path<BR>
.libPaths(c(file.path(spark_path,"libexec", "R", "lib"), .libPaths())) # Navigate to SparkR folder<BR>
library(SparkR) # Load the library<BR><BR>


That’s all.<BR>
Now this should run in your RStudio<BR>

'''
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
df <- createDataFrame(sqlContext, iris) 
head(df)
'''



