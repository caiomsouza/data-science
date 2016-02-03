
# http://www.r-bloggers.com/sparkr-quick-start-that-works/

library(SparkR) # Load the library


text_file <- SparkR:::textFile(sc, '/Users/caiomsouza/git/github.com/data-science/SparkR/README.md')

count(text_file)

take(text_file,1)
take(text_file,3)

take(text_file, count(text_file))

linesWithSpark <- SparkR:::filterRDD(text_file, 
                                     function(line) grepl("Spark", line))

collect(linesWithSpark)
