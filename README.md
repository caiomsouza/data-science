# Data Science

Data Science is an interdisciplinary field about processes and systems to extract knowledge or insights from large volumes of data in various forms, either structured or unstructured,[1][2] which is a continuation of some of the data analysis fields such as statistics, data mining and predictive analytics, as well as Knowledge Discovery in Databases (KDD).

https://en.wikipedia.org/wiki/Data_science<BR>
http://datasciencemasters.org<BR>


##Tools:<BR>
http://www.cs.waikato.ac.nz/ml/weka/<BR>
http://www.r-project.org<BR>
http://julialang.org<BR>
http://redis.io<BR>
http://scikit-learn.org/stable/<BR>
http://www.seleniumhq.org<BR>
http://scrapy.org/<BR>
http://gephi.github.io<BR>
https://gate.ac.uk/<BR>


##R Packages:
```
install.packages("plyr")
install.packages("XML")
install.packages("rgdal")
install.packages("sqldf")
install.packages("rjson")
install.packages("dplyr")
install.packages("data.table")
install.packages("reshape2")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("lattice")
install.packages("shiny")
install.packages("maps")
install.packages('ggthemes', dependencies = TRUE)
```

##RHadoop
```
install.packages("functional")
install.packages("~/git/Bitbucket/u-tad/Mod7/carlos.bellosta/r-packages/rmr2_3.3.1.tar.gz", repos = NULL, type = "source")
```


```
if (!(require("RColorBrewer", character.only=T, quietly=T))) {
  install.packages("RColorBrewer")
  library("RColorBrewer", character.only=T)
}
```

##R Commands

```

require("data.table")
getwd()
dt.data <- fread("/home/usuario/caiomsouza/github.com/u-tad/Mod8/jaime-zaratiegui/dat/callme.csv")

# Show tables
tables()

# Call a external R Script
source("your_script.R")

# Write Table
write.table(dt.nodes, file="/home/usuario/caiomsouza/github.com/u-tad/Mod8/jaime-zaratiegui/dat/nodes.csv", row.names=F, col.names = T, sep=",", quote=T)

# install the development version from github, use the devtools package,
library("devtools")
# github username / Package name 
# https://github.com/caiomsouza/caiomsouzarpackage
install_github("caiomsouza/caiomsouzarpackage")

```

http://www.sr.bham.ac.uk/~ajrs/R/r-function_list.html

##More:
Hidden Markov model (HMM)<BR>

##Links:
http://colorbrewer2.org<BR>
http://data.flowingdata.com<BR>
https://flowingdata.com<BR>
http://wesmckinney.com/blog/



##Cool websites:
http://upcoming.citybik.es<BR>

##Docs:
http://www.linfo.org/pipe.html<BR>
http://www.ub.edu/stat/docencia/Cursos-R/Radvanced/materials/Crear_paquetes_R.pdf<BR>
http://www.creal.cat/media/upload/arxius/jr/usaR/creacion_librerias_R.pdf<BR>
http://shiny.rstudio.com<BR>
http://docs.ggplot2.org/current/index.html<BR>
http://www.cookbook-r.com<BR>

##Tutorials
http://tuxette.nathalievilla.org/?p=1455&lang=en<BR>
https://github.com/RevolutionAnalytics/RHadoop/wiki/Downloads<BR>
http://cran.r-project.org/doc/contrib/Leisch-CreatingPackages.pdf<BR>
http://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/<BR>

##Courses Taught by Hadley Wickham
http://courses.had.co.nz<BR>
http://had.co.nz<BR>

##RStudio + Hadoop
http://www.datanalytics.com/2013/12/02/requisitos-para-mi-taller-de-hadoop-r-en-las-v-jornadas-de-usuarios-de-r/<BR>

##Environment
MAMP (Mac, Apache, MySQL and PHP)<BR>
https://www.mamp.info/en/downloads/<BR>

##Anaconda Server
http://continuum.io/anaconda-server<BR>

##Customizing R Startup
http://www.statmethods.net/interface/customizing.html<BR>

## R Package Example
https://github.com/caiomsouza/caiomsouzarpackage<BR>

##Plotly
Collaborative data science.<BR>
Plotly is the easiest way to graph and share your data.<BR>
https://plot.ly<BR>

##Markdown Basics
https://help.github.com/articles/markdown-basics/

## Run Gephi on PEDS VM
```
cd /opt/gephi/bin
./gephi
```

##Links:<BR>
https://siftscience.com/<BR>
http://techcrunch.com/2013/03/19/ex-googlers-launch-sift-science-a-fraud-fighting-system-for-websites-backed-by-5-5m-in-funding-from-union-square-first-round-yc-others/<BR>
https://bigml.com/gallery/models<BR>
http://www.dmg.org/v4-1/Statistics.html<BR>
https://en.wikipedia.org/wiki/Predictive_Model_Markup_Language<BR>
https://github.com/owenzhang/kaggle-avito<BR>
https://www.kaggle.com/c/otto-group-product-classification-challenge/forums/t/14335/1st-place-winner-solution-gilberto-titericz-stanislav-semenov<BR>
https://www.kaggle.com/titericz<BR>
https://www.kaggle.com/stasg7<BR>
https://github.com/titericz<BR><BR>

https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html<BR>
https://en.wikipedia.org/wiki/Scatter_plot<BR>

# Open Source Big Data Science Bootcamp
Introduction to Business Intelligence, Big Data, ETL, DW and Predictive Analytics<BR>
Integration all the worlds BI, Big Data and Predictive Analytics.<BR>
Who is a Data Scientst ? What is the skills of a Data Sciencist? <BR>
Introduction to the Data Science Toolkit<BR>
Introduction to R, Python and Weka <BR>
Data preparation with R, Python and PDI<BR>
Python scikit-learn<BR>
PCA<BR>
Predictive Modelling Techniques<BR>
    Supervised Learning<BR>
    Unsupervised Learning<BR>
Competing at Kaggle with real data science problems for real companies<BR>
Using Sparkl with R in a Real Problem<BR>
Integration R with Pentaho using pdiR and SparklPDI<BR>
Visualizion your Data using Pentaho<BR>
Sentiment Analysis using Hadoop<BR>

##Data Science Bootcamps

http://insightdatascience.com<BR>

http://www.thisismetis.com/data-science<BR>

The Complete List of Data Science Bootcamps & Fellowships<BR>
http://www.skilledup.com/articles/list-data-science-bootcamps<BR>

Learn Data Science at These 13 Coding Bootcamps<BR>
https://www.coursereport.com/blog/learn-data-science-at-these-13-bootcamps-and-programs<BR>

Microsoft Research Data Science Summer School<BR>
https://www.coursereport.com/schools/microsoft-research-data-science-summer-school#/about

Microsoft Research Data Science Summer School<BR>
https://ds3.research.microsoft.com<BR>

Nice list of Data Science Bootcamp Programs – Posted by Ikechukwu Okonkwo<BR>
http://datasciencebe.com/2014/09/24/nice-list-of-data-science-bootcamp-programs-posted-by-ikechukwu-okonkwo/<BR>


<BR>


http://www.simplilearn.com/big-data-and-analytics/data-scientist-certification-sas-r-excel-training?utm_source=google&utm_medium=cpc&utm_content=lvc&utm_term=%2Bdata%20%2Bscience&utm_campaign=search-certified-data-scientist-lvc-us-ca&gclid=CNu6ytSslMgCFYTnGwod9rcAJw#/ilt<BR>




# Kappa Architecture
http://www.kappa-architecture.com<BR>
http://www.computerweekly.com/cgi-bin/mt-search.cgi?IncludeBlogs=123&tag=Kappa%20Architecture&limit=20<BR>
http://radar.oreilly.com/2014/07/questioning-the-lambda-architecture.html<BR>
https://gist.github.com/ahdinosaur/bd1a0005154656217aae<BR>



##Freedabases

Geonames<BR>
http://www.geonames.org<BR>


#Data Science SaaS
https://algorithmia.com

Companies:<BR>
https://novelti.io<BR><BR>

Gartner CIO Agenda 2015: Top 10 IT Technology Priorities<BR>
http://www.arrowsi.com/company/blog/Gartner-CIO-Agenda-2015.html<BR>
http://www.gartner.com/imagesrv/cio/pdf/cio_agenda_insights2015.pdf<BR>


# Twitter API + R

SSL Twitter API<BR>
https://littlecodes.wordpress.com<BR>

Social media analysis in R using twitter API<BR>
http://www.slideshare.net/MohdAlam3/social-media-analysis-twitter-api-using-r?related=1<BR>

Natural Language Processing in R (rNLP)<BR>
http://www.slideshare.net/fridolin.wild/natural-language-processing-in-r-rnlp?related=1<BR>

How Sentiment Analysis work<BR>
http://www.slideshare.net/mcjenkins/how-sentiment-analysis-works?related=1<BR>

Text Mining with R -- an Analysis of Twitter Data<BR>
http://www.slideshare.net/rdatamining/text-mining-with-r-an-analysis-of-twitter-data<BR>

###Labs

Apache Spark<BR>
Create a Cluster With Spark<BR>
https://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-spark-launch.html<BR>

Install Apache Spark on Ubuntu-14.04<BR>
http://blog.prabeeshk.com/blog/2014/10/31/install-apache-spark-on-ubuntu-14-dot-04/

Apache Spark Quick Start<BR>
http://spark.apache.org/docs/1.1.1/quick-start.html<BR>

./ Spark standalone cluster tutorial<BR>
http://mbonaci.github.io/mbo-spark/<BR>

Hello, World in Java on Mac OS X <BR>
http://www.cs.princeton.edu/courses/archive/spr04/cos126/hello/mac.html<BR>

SISTEMA DE MONITORIZACIÓN Y CONTROL DE TRÁFICO EN CARRETERA<BR>
http://www.robesafe.com/personal/pablo.alcantarilla/papers/Alcantarilla06pfc.pdf<BR>
https://docs.google.com/presentation/d/1dFX8jXQDcEvA79oaBwKHeniak0wt4Sxp3KRJxBb2W8U/present?slide=id.i0<BR>

Calibración de cámaras y procesamiento de imágenes (III)<BR>
https://littlecodes.wordpress.com/2013/07/02/calibracion-de-camaras-y-procesamiento-de-imagenes-iii/<BR>

Warning: Clusters May Appear More Separated in Textbooks than in Practice<BR>
http://www.r-bloggers.com/warning-clusters-may-appear-more-separated-in-textbooks-than-in-practice/<BR>


News:<BR>
Sefaz-PR aplica BI em gestão de auditoria<BR>
http://www.decisionreport.com.br/publique/cgi/cgilua.exe/sys/start.htm?infoid=20777&sid=2<BR>

Study of Data Mining for Terrorists Is Urged<BR>
http://www.nytimes.com/2008/10/08/washington/08data.html?_r=5&ref=us&<BR>


BI Tools:<BR>
http://www.dundas.com<BR>

Data Mining Tools:<BR>
http://www.salford-systems.com<BR>

Articles:<BR>
The Programs That Become the Programmers<BR>
http://www.slate.com/articles/technology/bitwise/2015/09/pedro_domingos_master_algorithm_how_machine_learning_is_reshaping_how_we.2.html<BR>

Books:<BR>
The Master Algorithm: How the Quest for the Ultimate Learning Machine Will Remake Our World<BR>
http://www.amazon.com/dp/0465065708/?tag=slatmaga-20<BR>







