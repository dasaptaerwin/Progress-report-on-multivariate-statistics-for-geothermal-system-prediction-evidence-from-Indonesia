# Introduction

The following project were set up to try out the application of R to help us classify hot water samples based on their hydrochemical properties. The samples used in this activity are from all over Indonesia. But we try to choose locations with distinct geological character. We need to find out if this open source statistical package can bring out the uniqueness and use it to classify the water samples.

We collect the samples from direct field collection and from other similar geothermal researches. We are very thankful to fellow researchers who have been allowing us to re-use their data in the scope of this research. We will commit to the citation agreements upon the dataset transfer.

The output of this research will also be published as scientific papers on several media. The first paper have already published in the 2016 ITB Geothermal Workshop last month.

The core team of the research is:

- Dr. Prihadi Sumintadireja (Geology, ITB)
- Dr. Rina Herdianita (Geology, ITB)
- Dr. Dasapta Erwin Irawan (Geology, ITB)
- Yuanno Rezky, ST., MT (EBTKE counterpart)
- Anggita Agustin (student, master, Groundwater eng ITB)
- Ali Lukman (student, master, Geology, ITB)
- Fatkhurrokhman (student, undergraduate, Geology, ITB)

Contributors:

- Prana Ugi Gio (Universitas Sumatra Utara) for keen support on statistical theory
- to be added accordingly

Additional contributors will be added as we try to apply open science principles in this research. All materials and resources are available on [Open Science Framework server](http://osf.io/wbnz3).

We welcome any contributions, constructive comments and input.

# Objectives

The goals of this research are to reproduce deterministic observation and classification by field geologists using multivariate statistical approaches.

# Value of the research

If we can reproduce the deterministic approach then we can propose a machine learning technique to classify hydrochemical samples of geothermal water samples. This approach hopefully will robustly classify large dataset faster.


# Dataset

## Value of dataset

The following is the value of the dataset from this research:

- It is a nation-wide overview of geothermal dataset. Being aggregated from multiple sources with various settings, this dataset is a model of aggregation process,
- It is a model of low budget research in terms of software costs, because it uses open source tools (software, file formats, and data repository infrastructure)
- It endorses open science concept with: easy access on all resources, transparency of the process, and rapid dissemination through open source repository and publication media.

## Data sources

We have gathered 420 dataset from various sources, collected from:

- Geology ITB
- Center of Geological Research and Development
- Other sources and own testing for verification (specifically for dataset from West Java Province)

The preliminary result is a dataset with 420 rows and 66 columns. We managed to collect hot water samples consists of:

- major elements
- trace elements
- various geothermometry calculations

We identified each report that we had in the library, as follows:

- Krahmer, M. S. (1995)
- Dirasutisna, S. (2004)
- Suparman, dkk. (1999)
- Kusnadi, D. (2002)
- Dedi K (year unknown)
- Euis (year unknown)
- Fauziyyah dkk (year unknown)
- Haq dkk (year unknown)
- Prabowo dkk (year unknown)
- Alfiandy dkk (year unknown)
- Wahyudi dkk (year unknown)
- Phuong dkk, 2005)
- Emianto dan Aribowo (2011)
- Nukman (2009)
- Nurohman dan Aribowo (2012)
- Iqbal dkk (year unknown)

However, not all of the samples have all the measurements, therefore we curated the dataset very carefully. Many blank cells will be labeled with `NA`. The complete dataset is attached in the `dataset folder`.


## Data management

Dataset is the most important part in this research. It affects how we see the data and what it says about the controlling hydrogeological process. Therefore we also write a detail description on how we set up the dataset.

### Data consolidation and treatment

The final dataset was consolidated from various sources. Each source contained different kind of measurements. Thus we had a various size of data matrix. Therefore we appended the matrix size piece by piece to incorporate all data matrices. The final dataset and variable descriptor can be seen in the repository (please refer to `Data_geothermal_July2016.ods`).

### Data repository

Every data set is accessible from the [OSF repository](http://osf.io/wbnz3). Final link may be changed and doi will be added as soon as it is registered) and can be searched by title, topic and field location. Interactive map will be available soon using QGIS Cloud System. 

### Data use/sharing policy

All resources are released to the public in CC-BY license. It may be freely copied, distributed, edited, remixed, and built upon under the condition that you give acknowledgement as described below:

- Give proper acknowledgement. Publications, models and data products that make use of these datasets must include proper acknowledgement, including citing datasets in a similar way to citing a journal article (i.e. author, title, year of publication, edition or version, and URL or DOI access information. (See http://www.datacite.org/whycitedata).
- Let us know how you will use the data. The dataset creators would appreciate hearing of any plans to use the dataset. Consider consultation or collaboration with dataset creators.

### Software

We used the following open source software for the analysis:

- statistical programming: [R](http://cran.r-project.org) and [R Studio](www.rstudio.com)
- writing tools: [Overleaf](www.overleaf.com), [Pandoc converter](www.pandoc.org)
- writing format: [R markdown](http://rmarkdown.rstudio.com) and [Latex](http://latex-project.org)


# Methods

Reverse method was applied in this research, on the basis of geological observation and classification for each data. We needed to know whether the statistical approach could reproduce the deterministic approach by geologists.


## Data preparation

In preparing the dataset, we used the following step:

- matrix formating as a tabular format to avoid: table titles other than column headers, merged rows/columns, duplicate rows/columns, etc,
- saving the matrix in ascii format (`csv`),
- labeling NAs for empty cells.

We used R and `dplyr` package in this phase using the following functions: `group_by()`, `summarise()`, `mutate()`, `filter()`, `select()` and `arrange()`.

## Data plotting

Plots are essential components in the analysis. We visualize data, analyze, and interpret it based on customized plots. We used R and `ggplot` package in this job.
The following plotting functions were used frequently in the analysis: 


## Statistical analysis

Some statistical analyses were applied to identify structures with in the dataset. We used: cluster analysis, principal component analysis, and multiple regression. All method were discussed and compared to choose the best model to explain the nature of the dataset.

### Cluster analysis

Cluster analysis is a statistical technique to group a given population in to clusters based on the values of `Euclidean Distance` atau `Squared Euclidean Distance` (Gio and Irawan, 2016). It is advised to:

- standardized the dataset prior to the analysis given the various units of the variables, 
- deleting the outlier.

There are two famous clustering procedures: hierarchical and k-means clustering. Both are used in the analysis.

We used the following code, based on the following resources:

- [STHDA: Cluster analysis, accessed April 2016](http://www.sthda.com/english/wiki/cluster-analysis-in-r-unsupervised-machine-learning)
- [Ecology lab Univ Montana SU: Cluster analysis tutorial, accessed April 2016](http://ecology.msu.montana.edu/labdsv/R/labs/lab13/lab13.html)
- [Stat lab Univ Berkeley: Cluster analysis tutorial, accessed April 2016](http://www.stat.berkeley.edu/~s133/Cluster2a.html)

```
# K-Means Cluster Analysis
fit <- kmeans(mydata, 5) # 5 cluster solution
# get cluster means
aggregate(mydata,by=list(fit$cluster),FUN=mean)
# append cluster assignment
mydata <- data.frame(mydata, fit$cluster) 

# Ward Hierarchical Clustering
d <- dist(mydata, method = "euclidean") # distance matrix
fit <- hclust(d, method="ward")
plot(fit) # display dendogram
groups <- cutree(fit, k=5) # cut tree into 5 clusters
# draw dendogram with red borders around the 5 clusters
rect.hclust(fit, k=5, border="red") 
```

### Principal component analysis

Principal component analysis (PCA) is generally used to reduce the number of original variables in to sets of new variables. Most people would also use this technique to resize a data matrix. PCA model tries to produce the minimum number of new variables which can explain maximum variance at the same time. This is considered a semi-supervised machine learning model since we still have to determine how many maximum number of new variables (also called principal components/PC's), usually based on the `scree plot` (cite UgiIrawan). Two results will be produced by this method: 

1. case scores: justifies the position of given cases in to principal components (axis). 
2. factor loading: justifies the position of given variables in to axis.


We used the following code which was developed from the following resources:

- [Quick-R blog](http://www.statmethods.net/advstats/factor.html)
- [Analytics Vidhya: Practical Guide to Principal Component Analysis (PCA) in R & Python](https://www.analyticsvidhya.com/blog/2016/03/practical-guide-principal-component-analysis-python/)
- [Coghlan, A., Little Book of R for Multivariate Analysis, Sanger Institute , accessed April 2016](http://little-book-of-r-for-multivariate-analysis.readthedocs.io/en/latest/index.html)
- [Holand, SM., 2008, Principal components analysis (PCA) in R](www2.stat.unibo.it/montanari/Didattica/.../PCA_lab1.pdf)


```
# Pricipal Components Analysis
# entering raw data and extracting PCs
# from the correlation matrix
fit <- princomp(mydata, cor=TRUE)
summary(fit) # print variance accounted for
loadings(fit) # pc loadings
plot(fit,type="lines") # scree plot
fit$scores # the principal components
biplot(fit) 
```

### Multiple regression

Multiple linear regression is a statictical technique in form of linear equation, describing relationships between dependent and independent variable. In the math formula, we also can identify dependant variables contributing major control to the dataset and less control. The linear equation then will be used in predictions (Cite: Ugi and Irawan, 2016).  


We used the following code as developed from the following references:

- [Quick-R blog](http://www.statmethods.net/stats/regression.html)
- [Rego, F., 2015, Multiple Regression Analysis in R - First Steps](https://rstudio-pubs-static.s3.amazonaws.com/65641_88a692252c6c4f2ab279d115e59e6767.html)
- [Irawan, DE. and Gio, PU., 2016, R for beginners, online book, doi: 10.5281/zenodo.45628](https://github.com/dasaptaerwin/R-for-beginners)
- [Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS - R code](http://dx.doi.org/10.5281/zenodo.45629)
- Gio, PU. and Irawan, DE., 2016, Belajar Statistika dengan R: disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.
- Gio, PU. and Rosmaini, E., 2016, Belajar Olah Data dengan SPSS, Minitab, R,  Microsoft Excel, EViews, LISREL, Amos, dan SmartPLS, disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.


```
# Multiple Linear Regression Example
fit <- lm(y ~ x1 + x2 + x3, data=mydata)
summary(fit) # show results

# Other useful functions
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table
vcov(fit) # covariance matrix for model parameters
influence(fit) # regression diagnostics 

# diagnostic plots
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page
plot(fit)

# compare models
fit1 <- lm(y ~ x1 + x2 + x3 + x4, data=mydata)
fit2 <- lm(y ~ x1 + x2)
anova(fit1, fit2) 

# Stepwise Regression
library(MASS)
fit <- lm(y~x1+x2+x3,data=mydata)
step <- stepAIC(fit, direction="both")
step$anova # display results 

# Calculate Relative Importance for Each Predictor
library(relaimpo)
calc.relimp(fit,type=c("lmg","last","first","pratt"),
   rela=TRUE)

# Bootstrap Measures of Relative Importance (1000 samples)
boot <- boot.relimp(fit, b = 1000, type = c("lmg",
  "last", "first", "pratt"), rank = TRUE,
  diff = TRUE, rela = TRUE)
booteval.relimp(boot) # print result
plot(booteval.relimp(boot,sort=TRUE)) # plot result 
```

# Publications

The following list contains publications built upon this research.

Published:

- Classifying Hot Water Chemistry: Application Of Multivariate Statistics
Prihadi Sumintadireja, Dasapta Erwin Irawan, Yuano Rezky, Prana Ugiana Gio, Anggita Agustin, The 2016 International ITB Geothermal Workshop, March 2016. 
- [Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS - R code](http://dx.doi.org/10.5281/zenodo.45629)

Draft:

- Multivariate statistics on geothermal hydrochemistry, Drafted for Earth Science System Data Journal, draft's available online on [Overleaf](https://www.overleaf.com/read/bqqyztttxcyq)


# References

- [Quick-R blog](http://www.statmethods.net/stats/regression.html)
- [Rego, F., 2015, Multiple Regression Analysis in R - First Steps](https://rstudio-pubs-static.s3.amazonaws.com/65641_88a692252c6c4f2ab279d115e59e6767.html)
- [Irawan, DE. and Gio, PU., 2016, R for beginners, online book, doi: 10.5281/zenodo.45628](https://github.com/dasaptaerwin/R-for-beginners)
- [Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS - R code](http://dx.doi.org/10.5281/zenodo.45629)
- Gio, PU. and Irawan, DE., 2016, Belajar Statistika dengan R: disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.
- Gio, PU. and Rosmaini, E., 2016, Belajar Olah Data dengan SPSS, Minitab, R,  Microsoft Excel, EViews, LISREL, Amos, dan SmartPLS, disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.
- Classifying Hot Water Chemistry: Application Of Multivariate Statistics
Prihadi Sumintadireja, Dasapta Erwin Irawan, Yuano Rezky, Prana Ugiana Gio, Anggita Agustin, The 2016 International ITB Geothermal Workshop, March 2016. 
- [Analytics Vidhya: Practical Guide to Principal Component Analysis (PCA) in R & Python](https://www.analyticsvidhya.com/blog/2016/03/practical-guide-principal-component-analysis-python/)
- [Coghlan, A., Little Book of R for Multivariate Analysis, Sanger Institute , accessed April 2016](http://little-book-of-r-for-multivariate-analysis.readthedocs.io/en/latest/index.html)
- [Holand, SM., 2008, Principal components analysis (PCA) in R](www2.stat.unibo.it/montanari/Didattica/.../PCA_lab1.pdf)
- [STHDA: Cluster analysis, accessed April 2016](http://www.sthda.com/english/wiki/cluster-analysis-in-r-unsupervised-machine-learning)
- [Ecology lab Univ Montana SU: Cluster analysis tutorial, accessed April 2016](http://ecology.msu.montana.edu/labdsv/R/labs/lab13/lab13.html)
- [Stat lab Univ Berkeley: Cluster analysis tutorial, accessed April 2016](http://www.stat.berkeley.edu/~s133/Cluster2a.html)
