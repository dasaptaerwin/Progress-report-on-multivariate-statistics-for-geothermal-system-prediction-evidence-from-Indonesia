#####################################################
#####################################################
#####################################################
#####################################################

# Paper: IIGW
# Data: EBTKE hot water Gorontalo (Yuanno Rezky)
# Team leader: Prihadi S.
# Code and analysis: Dasapta Erwin Irawan and Prana Ugi

#####################################################
#####################################################
#####################################################
#####################################################

# Note: remove the '#' symbol only if you haven't done it previously


# Set up working folder

# install packages
## from CRAN server
install.packages("cluster") 
install.packages("rpart")
install.packages("vegan")
install.packages("gam")
install.packages("psych") # univar description
source("https://bioconductor.org/biocLite.R")
biocLite("pcaMethods")

## from Bioconductor server
#pcaMethods package from Bioconductor server
#source("http://bioconductor.org/biocLite.R") 
#biocLite("pcaMethods")

# Loading library
library(pcaMethods) # for pcaMethods package
library(cluster) # for cluster analysis
#library(readxl) # for opening data directly from xls format
library(rpart)
install.packages("vegan")
library(vegan)
install.packages("psych")
library(psych) # univar description
library(ggplot2)
library(mgcv)

# Load data
df <- read.csv("data_copy.csv", header=T) # load data 
row.names(df) <- df$Code # setting row names
df <- df[3:32] # exclude Location name

#attach(df)
str(df) # observe data structure (str)
head(df) #observe data 
tail(df) # observe data
is.na(df) # checking NA if any

#df <- na.omit(df) # omitting NA if any
row.names(df)
str(df)# viewing data structure

# Exploratory using pairs() function
# Assesing data patterns
cor.tab <- cor(df)
cor.tab
write.csv(cor.tab, "cortab.csv")
univar.tab <- describe(df)
univar.tab
write.csv(univar.tab, "univar.csv")

install.packages("PerformanceAnalytics")    
library(PerformanceAnalytics)
chart.Correlation(df[1:10], histogram=TRUE, pch=19) # visual PA

install.packages("ggcorrplot")
library(ggcorrplot)
correl1 <- round(df[11:20])   # rounding correl matrix
p.mat1 <- cor_pmat(df[11:20])         # compute p-values
ggcorrplot(correl1)              # making heatmap
dev.off()
#FAILED

# Run PCA 
#installed.packages("FactoMineR")
#installed.packages("factoextra")
library("FactoMineR")
library("factoextra")
res.pca <- PCA(df, graph = FALSE)
eigenvalues <- res.pca$eig
head(eigenvalues[, 1:2])
barplot(eigenvalues[, 2], names.arg=1:nrow(eigenvalues), 
        main = "Variances",
        xlab = "Principal Components",
        ylab = "Percentage of variances",
        col ="steelblue")
# Add connected line segments to the plot
lines(x = 1:nrow(eigenvalues), 
      eigenvalues[, 2], 
      type="b", pch=19, col = "red")
fviz_pca(res.pca, choix = "var", col.var="contrib") + labs(title="Biplot PCA hot water")
plot(res.pca, choix = "ind")

# Run Cluster 
distance <- dist(scale(df), method = "euclidean")
cluster <- hclust(distance, method = "complete")
plot(cluster, cex = 0.6, hang = -1, main = "Hot water") 
rect.hclust(cluster, k = 3, border = 2:4) 

# Run Reg Tree
tree.fit <- rpart(Cl ~ ., data = df) # df must be in data frame class
printcp(tree.fit) # display the results
plotcp(tree.fit) # visualize cross-validation results
summary(tree.fit) # detailed summary of splits
plot(tree.fit, uniform=TRUE,
     main="Tree classification of hot water samples")
text(tree.fit, use.n=TRUE, all=TRUE, cex=.8)

####################################
####################################
####################################
gam1 <- gam(Cl ~ Ca + Na + Mg + 
              K + SO + H + 
              O + C + Sr + Br + 
              I + Fe, data = df[4:17])
summary(gam1)
gam.check(gam1, type=c("deviance","pearson","response"))

gam2 <- gam(Cl ~ Ca + Na + Mg + 
              K + SO + H + 
              O + C + Sr + Br + 
              I + Fe, data = df[4:17])
summary(gam2)
gam.check(gam2, type=c("deviance","pearson","response"))

AIC(mod_lm)
AIC(mod_lm1)



# Ref:
## http://www2.stat.unibo.it/montanari/Didattica/Multivariate/CA_lab.pdf
## http://cc.oulu.fi/~jarioksa/opetus/metodi/sessio3.pdf
## http://www2.stat.unibo.it/montanari/Didattica/Multivariate/PCA_lab1.pdf
## http://bioconductor.wustl.edu/bioc/vignettes/pcaMethods
## https://cran.r-project.org/web/packages/vegan/vignettes/intro-vegan.pdf
## http://cc.oulu.fi/~jarioksa/opetus/metodi/vegantutor.pdf
## https://www3.nd.edu/~mclark19/learn/GAMS.pdf



