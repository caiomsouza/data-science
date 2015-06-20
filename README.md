# data-science

##Tools:<BR>
http://www.cs.waikato.ac.nz/ml/weka/<BR>
http://www.r-project.org<BR>
http://julialang.org<BR>
http://redis.io<BR>
http://scikit-learn.org/stable/<BR>
http://www.seleniumhq.org<BR>
http://scrapy.org/<BR><BR>

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
install.packages("ggthemes")
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



```

##More:
Hidden Markov model (HMM)<BR>

##Links:
http://colorbrewer2.org<BR>
http://data.flowingdata.com<BR>
https://flowingdata.com<BR>


##Cool websites:
http://upcoming.citybik.es<BR>

##Docs:
http://www.linfo.org/pipe.html<BR>
http://www.ub.edu/stat/docencia/Cursos-R/Radvanced/materials/Crear_paquetes_R.pdf<BR>
http://www.creal.cat/media/upload/arxius/jr/usaR/creacion_librerias_R.pdf<BR>
http://shiny.rstudio.com<BR>
http://docs.ggplot2.org/current/index.html<BR>

##Tutorials
http://tuxette.nathalievilla.org/?p=1455&lang=en<BR>
https://github.com/RevolutionAnalytics/RHadoop/wiki/Downloads<BR>

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
