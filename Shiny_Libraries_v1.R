cat(file=stderr(), "load libraries", "\n")

#parallel and background processing
library(callr)
library(doParallel)
library(parallel)
library(imp4p)
library(preprocessCore)

library(promises)
library(future)
plan(multisession)

#basic
library(tidyverse)
library(data.table)
library(fs)
##library(miscTools)

#graphics
library(gplots)
library(rgl)
library(colourpicker)
library(randomcoloR)


#read write
library(readxl)
library(openxlsx)

#tables
library(rhandsontable)
library(DT)

#library(cluster)    # clustering algorithms
#library(grid)

#library(effsize)

#library(ggpubr)
library(pca3d)

##library(limma)
##library(edgeR)

library(gridExtra)
library(MASS)
library(pcaMethods)
#library(vsn)
#library(robustbase)
library(factoextra) # clustering algorithms & visualization

#library(ViSEAGO)
#library(topGO)
#library(clusterProfiler)
#library(GSEABase)
#library(rWikiPathways)
#library(STRINGdb)
#library(igraph)

#library(tcltk)




#library(dplyr)
#library(stringr)
#library(tidyr)
#library(tibble)
