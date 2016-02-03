# Installing SparkR
#https://amplab-extras.github.io/SparkR-pkg/

spark_path <- strsplit(system("brew info apache-spark",intern=T)[4],' ')[[1]][1] # Get your spark path
.libPaths(c(file.path(spark_path,"libexec", "R", "lib"), .libPaths())) # Navigate to SparkR folder

library(SparkR) # Load the library

sc <- sparkR.init(master="local")

#install.packages("SparkR")

setwd("/Users/caiomsouza/git/Bitbucket/ucm/COMPLEMENTOS_DE_FORMACION_EN_TECNICAS_DE_MINERIA_DE_DATOS/tareas-entregar/trabajo-31enero16")

paises <- read.csv(file="DatosPaises.csv",head=TRUE,sep=",")
head(paises, 10)

sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
# Create the DataFrame
df <- createDataFrame(sqlContext, paises) 
head(df)
str(df)
summary(df)

paises <- df

#Dejar solo POBL NATALIDA ESPERANZ MORTALID
paises.valores <- paises
# Remove la columna Paises
paises.valores$Pais <- NULL

# Remove la columna BalanzaComercial
paises.valores$BalanzaComercial <- NULL

# Remove la columna PIB
paises.valores$PIB <- NULL

# Remove la columna ProdCereales
paises.valores$ProdCereales <- NULL

head(paises.valores,10)

paises.valores.df <- as.data.frame(paises.valores)

cor(paises.valores.df)


# Normaliza las variables 
paises.valores.normalizar.df <- scale(paises.valores.df)
head(paises.valores.normalizar.df, 10)

paises.cor <- cor(paises.valores.normalizar.df)
#View(paises.cor)
paises.cor


hist(paises.valores.normalizar.df)

summary(paises.valores)
hist(paises.valores.df$Pobl)
hist(paises.valores.df$Natalidad)
hist(paises.valores.df$EsperanzaVida)
hist(paises.valores.df$Mortalidad)

#library(outliers) #: outlier, rm.outlier, scores, chisq.out.test # para detectar outliers o datos an?malos ojo serie estacionaria

#Datos anomalos
# type = z Busca los datos tipificados mayor que 5 vezes la sd (disviacion tipica)

#length(paises.valores)

#View(paises.valores)
#View(paises)

# Remove datos anomalos
#remove.atipicos.paises.valores <- paises.valores[abs(scores(paises.valores, type="z"))<=5]
#remove.atipicos.paises.valores
#remove.atipicos.paises.valores.df <- as.data.frame(remove.atipicos.paises.valores)
#length(remove.atipicos.paises.valores)

#desviacion tipica
#sd(remove.atipicos.paises.valores)

#View(remove.atipicos.paises.valores.df)


# Utilizando la libreria corrplot para visualizar mejor las correlaciones entre las variables.
# https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html

library(corrplot)
M <- cor(paises.valores.normalizar.df)
corrplot(M, method = "circle")
corrplot(M, method = "square")
corrplot(M, method = "ellipse")
corrplot(M, method = "number")
corrplot(M, method = "shade")
corrplot(M, method = "color")
corrplot(M, method = "pie")
corrplot(M, type = "upper")
corrplot(M, type = "lower")
corrplot.mixed(M)
corrplot.mixed(M, lower = "ellipse", upper = "circle")
corrplot.mixed(M, lower = "square", upper = "circle")
corrplot(M, order = "AOE")
corrplot(M, order = "hclust")
corrplot(M, order = "FPC")
corrplot(M, order = "alphabet")
corrplot(M, order = "hclust", addrect = 2)
corrplot(M, order = "hclust", addrect = 3)

col1 <- colorRampPalette(c("#7F0000", "red", "#FF7F00", "yellow", "white", "cyan", 
                           "#007FFF", "blue", "#00007F"))
col2 <- colorRampPalette(c("#67001F", "#B2182B", "#D6604D", "#F4A582", "#FDDBC7", 
                           "#FFFFFF", "#D1E5F0", "#92C5DE", "#4393C3", "#2166AC", "#053061"))
col3 <- colorRampPalette(c("red", "white", "blue"))
col4 <- colorRampPalette(c("#7F0000", "red", "#FF7F00", "yellow", "#7FFF7F", 
                           "cyan", "#007FFF", "blue", "#00007F"))
wb <- c("white", "black")
## using these color spectrums
corrplot(M, order = "hclust", addrect = 2, col = col1(100))

corrplot(M, order = "hclust", addrect = 2, col = col2(50))

corrplot(M, order = "hclust", addrect = 2, col = col3(20))

corrplot(M, order = "hclust", addrect = 2, col = col4(10))

corrplot(M, order = "hclust", addrect = 2, col = wb, bg = "gold2")

## remove color legend and text legend
corrplot(M, order = "AOE", cl.pos = "n", tl.pos = "n")

## bottom color legend, diagonal text legend, rotate text label
corrplot(M, order = "AOE", cl.pos = "b", tl.pos = "d", tl.srt = 60)

## a wider color legend with numbers right aligned
corrplot(M, order = "AOE", cl.ratio = 0.2, cl.align = "r")

corrplot(abs(M), order = "AOE", col = col3(200), cl.lim = c(0, 1))

## visualize a matrix in [-100, 100]
ran <- round(matrix(runif(225, -100, 100), 15))
corrplot(ran, is.corr = FALSE, method = "square")

## a beautiful color legend
corrplot(ran, is.corr = FALSE, method = "ellipse", cl.lim = c(-100, 100))

cor.mtest <- function(mat, conf.level = 0.95) {
  mat <- as.matrix(mat)
  n <- ncol(mat)
  p.mat <- lowCI.mat <- uppCI.mat <- matrix(NA, n, n)
  diag(p.mat) <- 0
  diag(lowCI.mat) <- diag(uppCI.mat) <- 1
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(mat[, i], mat[, j], conf.level = conf.level)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
      lowCI.mat[i, j] <- lowCI.mat[j, i] <- tmp$conf.int[1]
      uppCI.mat[i, j] <- uppCI.mat[j, i] <- tmp$conf.int[2]
    }
  }
  return(list(p.mat, lowCI.mat, uppCI.mat))
}

res1 <- cor.mtest(mtcars, 0.95)
res2 <- cor.mtest(mtcars, 0.99)
## specialized the insignificant value according to the significant level
corrplot(M, p.mat = res1[[1]], sig.level = 0.2)

corrplot(M, p.mat = res1[[1]], sig.level = 0.05)

corrplot(M, p.mat = res1[[1]], sig.level = 0.01)

## leave blank on no significant coefficient
corrplot(M, p.mat = res1[[1]], insig = "blank")

## add p-values on no significant coefficient
corrplot(M, p.mat = res1[[1]], insig = "p-value")

## add all p-values
corrplot(M, p.mat = res1[[1]], insig = "p-value", sig.level = -1)

## add cross on no significant coefficient
corrplot(M, p.mat = res1[[1]], order = "hclust", insig = "pch", addrect = 3)

## plot confidence interval(0.95, 0.95, 0.99), 'rect' method
corrplot(M, low = res1[[2]], upp = res1[[3]], order = "hclust", rect.col = "navy", 
         plotC = "rect", cl.pos = "n")

corrplot(M, p.mat = res1[[1]], low = res1[[2]], upp = res1[[3]], order = "hclust", 
         pch.col = "red", sig.level = 0.01, addrect = 3, rect.col = "navy", plotC = "rect", 
         cl.pos = "n")

for (i in seq(0.1, 0, -0.005)) {
  tmp <- cor.mtest(mtcars, 1 - i)
  corrplot(M, p.mat = tmp[[1]], low = tmp[[2]], upp = tmp[[3]], order = "hclust", 
           pch.col = "red", sig.level = i, plotC = "rect", cl.pos = "n", mar = c(0, 
                                                                                 0, 1, 0), title = substitute(alpha == x, list(x = format(i, digits = 3, 
                                                                                                                                          nsmall = 3))))
}

# Buscar datos nulos
# no he conseguido hacer
d <- paises.valores.normalizar
n <- paises.valores
n <- as.data.frame(n)

length(n)
summary(n)
length(n[!is.na(n)])
length(!is.na(n))
length(is.na(n))
length(n)
length(n[!is.na(n)])
length(complete.cases(n))
nulos <- complete.cases(n)
nulos

n <- n[complete.cases(n)]


# Extraido de http://www.ugr.es/~mvargas/3.DosEjesanalisisclusteryCCAA.pdf

# Ejemplo de Cluster Jerarquico que ha funcionado con los datos de paises
# Con datos no normalizados
m <- paises.valores.df
cj <- hclust(dist(m)^2, method = "average")
print(cj)
plot(cj,main="Dendograma",labels=row.names(m),hang=-1)

# Con datos normalizados
m <- paises.valores.normalizar.df
cj <- hclust(dist(m)^2, method = "average")
print(cj)
plot(cj,main="Dendograma",labels=row.names(m),hang=-1)
plot(cj)

democut<-cutree(cj,k=5)

plot(cj, labels = as.character(democut))

# Con Kmeans

ck <- kmeans(m,4)
plot(ck, main="K-Means", labels=row.names(m))

acp=princomp(m)
comp=predict(acp)[,1:2]
km2=kmeans(comp,4)

plot(comp,col=km2$cluster) #cada cluster de un color
points(km2$centers, col = 1:4, pch = 8, cex=2) #medias de los cluster en las componentes 
text(comp[,1],comp[,2],labels=rownames(m),col=km2$cluster) #etiquetas de nombres Comunidades

#Los grupos son resultado del análisis jerarquico derivado de hclust
g=cutree(cj,k=4) #asignación de los elementos a cada grupo
g

inicial=tapply(m,list(rep(g,ncol(m)),col(m)),mean) #Calculo de medias por grupo 
inicial

km3=kmeans(m,inicial)
km3
km3$withinss
km3$size
km3$centers
km3$totss
km3$tot.withinss
km3$betweenss
km3$iter
km3$ifault
km3$cluster


# Ver y probar 
# http://analisisydecision.es/manual-curso-introduccion-de-r-capitulo-15-analisis-cluster-con-r-i/

# http://ecology.msu.montana.edu/labdsv/R/labs/lab13/lab13.html
# http://www.palgrave-journals.com/jibs/journal/v37/n4/fig_tab/8400206t2.html

#install.packages("NbClust")
library(NbClust)

## A real data example

data <- paises.valores.normalizar.df

res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "ward.D2", index = "kl") 
res$All.index
res$Best.nc
res$Best.partition

res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "kmeans", index = "hubert")
res$All.index


res<-NbClust(data, diss=NULL, distance = "manhattan", min.nc=2, max.nc=6, 
             method = "complete", index = "all") 
res$All.index
res$Best.nc
res$All.CriticalValues
res$Best.partition

# http://www.inside-r.org/packages/cran/NbClust/docs/NbClust

