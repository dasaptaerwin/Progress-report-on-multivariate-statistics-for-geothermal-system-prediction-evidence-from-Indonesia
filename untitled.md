Authors: 
- Prihadi Sumintadireja, 
- Dasapta Erwin Irawan, 
- N. Rina Herdianita, 
- Yuano Rezky, 
- Anggita Agustin, and
- Ali Lukman

# Abstract

This document describes our progress. This research was funded by Institut Teknologi Bandung Research Grant 2016. We try to apply some multivariate statistical approach to build a clustering model of geothermal hydrochemistry dataset. Our progress is 100%: 416 dataset compiled from various sources. The objectives is to try out a machine learning method to learn the geothermal system, volcanic or non-volcanic system, based on geochemical composition of hot water samples as trained dataset using open source application. If we could come up with a certain model, then for the next step, we could predict the geothermal system of new samples. 

We used [R programming](http://cran.at.r-project.org/) (and [RStudio IDE](rstudio.com)) and multivariate analysis packages to try to extract the somewhat "hidden" pattern in the data set. We used principal component analysis, cluster analysis, and the multiple regression model. The codes was developed based on the free tutorials available. We provide the codes and data set available to be freely downloaded using [Open Science Framework server](osf.io/wbnz3) (we put [CC-BY](https://creativecommons.org/licenses/by/2.0/) license) in order to invite more participation from public to improve this work.

Based on our results, we could see the separation of water samples into two geothermal systems, volcanic and non-volcanic based systems. However we could also find some samples fall in the middle of both systems. The data shows that although the geology has major control to the system, but the chemical stability could show a hybrid characteristics. 

We have produced some output in a sense of blogs, slide decks presented in front of the Bappeda West Java, two proceeding papers (one was for the IIGW 2016 and one is sent as abstract to the IIGW 2017), a draft paper will be submitted to [ScienceOpen](ScienceOpen.com) Research Journal. We also provide the full report available on [Authorea](https://goo.gl/CVkrfI).

Keywords: multivariate statistics, geothermal, hydrochemistry

# Introduction

The following project were set up to try out the application of R to help us classify hot water samples based on their hydrochemical properties. The samples used in this activity are from all over Indonesia. But we try to choose locations with distinct geological character. We need to find out if this open source statistical package can bring out the uniqueness and use it to classify the water samples.

We collect the samples from direct field collection and from other similar geothermal researches. We are very thankful to fellow researchers who have been allowing us to re-use their data in the scope of this research. We will commit to the citation agreements upon the dataset transfer. The output of this research will also be published as scientific papers on several media. The first paper have already published in the 2016 ITB Geothermal Workshop last month.

The core team of the research is:

- Dr. Prihadi Sumintadireja (Geology, ITB)
- Dr. Rina Herdianita (Geology, ITB)
- Dr. Dasapta Erwin Irawan (Geology, ITB)
- Yuanno Rezky, ST., MT (EBTKE counterpart)
- Anggita Agustin (student, master, Groundwater eng ITB)
- Ali Lukman (student, master, Geology, ITB)

Contributors:

- Prana Ugi Gio (Universitas Sumatra Utara) for keen support on statistical theory
- Fatkhurrokhman (student, undergraduate, Geology, ITB)
- Fithriyani Fauzziah (student, master, Groundwater Engineering, ITB)

Additional contributors will be added as we try to apply open science principles in this research. All materials and resources are available on [Open Science Framework server](http://osf.io/wbnz3) and [Github](https://github.com/dasaptaerwin/Progress-report-on-multivariate-statistics-for-geothermal-system-prediction-evidence-from-Indonesia).

# Objectives

The goals of this research are to reproduce deterministic observation and classification by field geologists using multivariate statistical approaches. Hopefully we can analyze new dataset using the following model based on training dataset.

# Value of the research

If we can reproduce the deterministic approach then we can propose a machine learning technique to classify hydrochemical samples of geothermal water samples. This approach hopefully will robustly classify large dataset faster.


# Dataset

## Value of dataset

The following is the value of the dataset from this research:

- It is a nation-wide overview of geothermal dataset. Being aggregated from multiple sources with various settings, this dataset is a model of aggregation process,
- It is a model of low budget research in terms of software costs, because it uses open source tools (software, file formats, and data repository infrastructure)
- It endorses open science concept with: easy access on all resources, transparency of the process, and rapid dissemination through open source repository and publication media.

## Data sources

We have gathered 416 dataset from various sources, collected from (see [data table](https://www.authorea.com/users/87737/articles/120109/master/file/data.csv) and [data descriptor](https://www.authorea.com/users/87737/articles/120109/master/file/datadescriptor.csv)):

- Geology ITB
- Center of Geological Research and Development
- Other sources and own testing for verification (specifically for dataset from West Java Province)

The preliminary result is a dataset with 416 rows and 66 columns. We managed to collect hot water samples consists of:

- major elements
- trace elements
- various geothermometry calculations

We identified each report that we had in the library, as follows:

- Krahmer, M. S. (1995)
- Dirasutisna, S. (2004)
- Suparman, dkk. (1999)
- Kusnadi, D. (2002)
- Dedi K (2016)
- Euis (2016)
- Fauziyyah et al. (2016)
- Haq et al. (2016)
- Prabowo et al. (2016)
- Alfiandy et al. (2016)
- Wahyudi et al. (2016)
- Phuong dkk, 2005)
- Emianto dan Aribowo (2011)
- Nukman (2009)
- Nurohman dan Aribowo (2012)
- Iqbal et al. (2016)

However, not all of the samples have all the measurements, therefore we curated the dataset very carefully. Many blank cells will be labeled with `NA`. The complete dataset is attached in the `dataset folder`. However we had several drawbacks in collecting the coordinates of the points. 


## Data management

Dataset is the most important part in this research. It affects how we see the data and what it says about the controlling hydrogeological process. Therefore we also write a detail description on how we set up the dataset.

### Data consolidation and treatment

The final dataset was consolidated from various sources. Each source contained different kind of measurements. Thus we had a various size of data matrix. Therefore we appended the matrix size piece by piece to incorporate all data matrices. The final dataset and variable descriptor can be seen in the repository (please refer to `data.csv` and `datadescriptor.csv`). This step is the hardest since we've got many data from various sources, mainly in spreadsheet and pdf formats, with also various typing format, eg: different decimal separator, etc. So we have to work on that problems before we could use it in our analysis. 

### Data repository

Every data set is accessible from the [OSF repository](http://osf.io/wbnz3). Final link may be changed and doi will be added as soon as it is registered) and can be searched by title, topic and field location. Interactive map will be available soon using QGIS Cloud System, and also we have to deal with the coordinates problem. We tried to set the points based on the geographical indications written in the original reports. 

### Data use/sharing policy

All resources are released to the public in CC-BY license. It may be freely copied, distributed, edited, remixed, and built upon under the condition that you give acknowledgment as described below:

- Give proper acknowledgement. Publications, models and data products that make use of these datasets must include proper acknowledgement, including citing datasets in a similar way to citing a journal article (i.e. author, title, year of publication, edition or version, and URL or DOI access information. (See [Why cite data](http://www.datacite.org/whycitedata)).
- Let us know how you will use the data. The dataset creators would appreciate hearing of any plans to use the dataset. Consider consultation or collaboration with dataset creators.

### Software

We used the following open source software for the analysis:

- statistical programming: [R](http://cran.r-project.org) and [R Studio](www.rstudio.com)
- writing tools: [Authorea](www.authorea.com), [Pandoc converter](www.pandoc.org)
- writing format: [R markdown](http://rmarkdown.rstudio.com) and [Latex](http://latex-project.org)


# Methods

Reverse method was applied in this research, on the basis of geological observation and classification for each data. We needed to know whether the statistical approach could reproduce the deterministic approach by geologists. The following methods, principal component analysis (PCA), cluster analysis (CA), and multiple regression (MR), have been extensively used in all sciences, but we haven't seen many geoscience papers using them, especially in Indonesia.

Examples have been set by \cite{irawan_hydrogeochemistry_2009}, \cite{putranto_hydrogeological_2016}, and \cite{agustin_application_2015} in some areas in Indonesia. More examples were also available by \cite{goldsmith_hydrochemistry_2015}, \cite{usunoff_multivariate_1989},  \cite{king_multivariate_2014}, and \cite{schwartz_slowflow_2014}


## Data preparation

In preparing the dataset, we used the following step:

- matrix formating as a tabular format to avoid: table titles other than column headers, merged rows/columns, duplicate rows/columns, etc,
- saving the matrix in ascii format (`csv`),
- labeling NAs for empty cells.

We used R and `dplyr` package in this phase using the following functions: `group_by()`, `summarise()`, `mutate()`, `filter()`, `select()` and `arrange()` as given by the following examples \cite{coghlan_little_????}, \cite{le_factominer:_2008}, and \cite{wilkinson_multivariate_2014}.

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

We used the following code:
- K-Means Cluster Analysis `fit <- kmeans(mydata, 5) # 5 cluster solution`
- Ward Hierarchical Clustering `fit <- hclust(d, method="ward") -> plot(fit) # display dendogram -> rect.hclust(fit, k=5, border="red") `

The code was based on the following resources:
- [STHDA: Cluster analysis, accessed April 2016](http://www.sthda.com/english/wiki/cluster-analysis-in-r-unsupervised-machine-learning)
- [Ecology lab Univ Montana SU: Cluster analysis tutorial, accessed April 2016](http://ecology.msu.montana.edu/labdsv/R/labs/lab13/lab13.html)
- [Stat lab Univ Berkeley: Cluster analysis tutorial, accessed April 2016](http://www.stat.berkeley.edu/~s133/Cluster2a.html)

Below is the cluster analysis using three methods.

- [Cluster plot](https://www.authorea.com/users/87737/articles/120109/master/file/figures/cluster.png)

### Principal component analysis

Principal component analysis (PCA) is generally used to reduce the number of original variables in to sets of new variables. Most people would also use this technique to resize a data matrix. PCA model tries to produce the minimum number of new variables which can explain maximum variance at the same time. This is considered a semi-supervised machine learning model since we still have to determine how many maximum number of new variables (also called principal components/PC's), usually based on the `scree plot` (cite UgiIrawan). Two results will be produced by this method: 

1. case scores: justifies the position of given cases in to principal components (axis). 
2. factor loading: justifies the position of given variables in to axis.


We used the following code `fit <- princomp(mydata, cor=TRUE), summary(fit), loadings(fit), plot(fit,type="lines"), fit$scores, biplot(fit)`, which was developed from the following resources:

- [Quick-R blog](http://www.statmethods.net/advstats/factor.html)
- [Analytics Vidhya: Practical Guide to Principal Component Analysis (PCA) in R & Python](https://www.analyticsvidhya.com/blog/2016/03/practical-guide-principal-component-analysis-python/)
- [Coghlan, A., Little Book of R for Multivariate Analysis, Sanger Institute , accessed April 2016](http://little-book-of-r-for-multivariate-analysis.readthedocs.io/en/latest/index.html)
- [Holand, SM., 2008, Principal components analysis (PCA) in R](www2.stat.unibo.it/montanari/Didattica/.../PCA_lab1.pdf)

The following image are some of the plots produced from the analysis.

- [pca plot](https://www.authorea.com/users/87737/articles/120109/master/file/figures/pca.png)


### Multiple regression

Multiple linear regression is a statictical technique in form of linear equation, describing relationships between dependent and independent variable. In the math formula, we also can identify dependant variables contributing major control to the dataset and less control. The linear equation then will be used in predictions (Cite: Ugi and Irawan, 2016).  


We used the following code,

- `fit <- lm(y ~ x1 + x2 + x3, data=mydata)`
- `anova(fit)`, 
- `vcov(fit)`, 
- `influence(fit)`, 
- `anova(fit1, fit2)`, 
- `step <- stepAIC(fit, direction="both")`,
- `calc.relimp(fit,type=c("lmg","last","first","pratt"), rela=TRUE)`,
- `boot <- boot.relimp(fit, b = 1000, type = c("lmg", "last", "first", "pratt"), rank = TRUE, diff = TRUE, rela = TRUE)`,
- `booteval.relimp(boot)`,
- `plot(booteval.relimp(boot,sort=TRUE))`

as developed from the following references:

- [Quick-R blog](http://www.statmethods.net/stats/regression.html)
- [Rego, F., 2015, Multiple Regression Analysis in R - First Steps](https://rstudio-pubs-static.s3.amazonaws.com/65641_88a692252c6c4f2ab279d115e59e6767.html)
- [Irawan, DE. and Gio, PU., 2016, R for beginners, online book, doi: 10.5281/zenodo.45628](https://github.com/dasaptaerwin/R-for-beginners)
- [Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS - R code](http://dx.doi.org/10.5281/zenodo.45629)
- Gio, PU. and Irawan, DE., 2016, Belajar Statistika dengan R: disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.
- Gio, PU. and Rosmaini, E., 2016, Belajar Olah Data dengan SPSS, Minitab, R,  Microsoft Excel, EViews, LISREL, Amos, dan SmartPLS, disertai beberapa contoh perhitungan manual, USU Press, ISBN 979 458 801 6.

The following figure is the multiple regression tree from the analysis.

- [multiple regression tree](https://www.authorea.com/users/87737/articles/120109/master/file/figures/tree.png)

# Research outputs

## Publications

The following list contains publications built upon this research.

**Published**

- Sumintadireja, P., **Irawan, DE.**, Rezky, Y., Gio, P. U., & Agustin, A. (2016). Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS. The 2016 International ITB Geothermal Workshop, March 2016, Zenodo. [DOI 10.5281/zenodo.45630](http://doi.org/10.5281/zenodo.45630). 
- Sumintadireja, P., **Irawan, DE.**, Herdianita, R., Rezky Y., Gio, PU., and Agustin A., 2016, Classifying hot water chemistry: Application of MULTIVARIATE STATISTICS - data and R code submision, available at Zenodo repository, [DOI 10.5281/zenodo.45629](http://dx.doi.org/10.5281/zenodo.45629).
- Irawan, DE., 2016, Multivariate statistics for hydrogeology: moving forward from "the present is the key to the past", 1st Annual PAAI conference, 17 November 2016, available at OSF platform, [DOI 10.17605/OSF.IO/HKS89](https://osf.io/hks89/).

**Presentations in front of authorities**

- Sumintadireja, P., **Irawan, DE.**, Herdianita, R., Rezky Y., Gio, PU., and Agustin A., 2016, Analisis multivariabel untuk mendeteksi pola data: kasus data hidrokimia air panas, Bappeda Provinsi Jawa Barat, Aug 2016, [link to slide](https://www.researchgate.net/publication/299579675_slides_CLASSIFYING_HOT_WATER_CHEMISTRY_APPLICATION_OF_MULTIVARIATE_STATISTICS).

**Draft**

- Multivariate statistics on geothermal hydrochemistry, Drafted for Earth Science System Data Journal, draft's available online on [Overleaf](https://www.overleaf.com/read/bqqyztttxcyq)


# Related links

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
