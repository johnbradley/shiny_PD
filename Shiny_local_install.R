

package_list <- c('devtools', 'tidyr', 'httr', 'png', 'tidyverse', 'dplyr', 'fs', 'effsize',
                  'colourpicker', 'tibble', 'stringr', 'readxl', 'randomcoloR', 'gplots',
                  'ggpubr', 'rgl', 'pca3d', 'robustbase', 'cluster', 'factoextra',
                  'igraph', 'shiny', 'shinyWidgets', 'shinyFiles', 'rhandsontable', 
                  'shinyjs', 'shinyalert', 'DT', 'ggraph', 'imp4p', 'Peptides',
                  'flexdashboard', 'openxlsx', 'stringi', 'jsonlite', 'remotes', 
                  'BiocManager', 'rAmCharts')


biocmanager_list = c('impute', 'ViSEAGO', 'topGO', 'clusterProfiler', 'GSEABase', 'rWikiPathways', 
                     'STRINGdb', 'limma', 'edgeR', 'pcaMethods', 'gridExtra', 'MASS', 'vsn',
                     'preprocessCore', 'org.Hs.eg.db', 'org.Mm.eg.db', 'org.Rn.eg.db')


#devtools::install_github('omarwagih/rmotifx', dependencies = TRUE, library="/home/dpmsr/R/library") 
#remotes::install_github("jmwozniak/PTMphinder", dependencies = TRUE)

library(devtools)
library(remotes)

withr::with_libpaths(new = "/home/mascot/R/library", install_github('omarwagih/rmotifx'))
withr::with_libpaths(new = "/home/mascot/R/library", install_github('jmwozniak/PTMphinder'))

#devtools::install_github('omarwagih/rmotifx', args = c('--lib="/home/mascot/R/library"'))

devtools::install_github("rgl", "trestletech", "js-class")

withr::with_libpaths(new = "/home/mascot/R/library", install_github('trestletech/shinyRGL'))
withr::with_libpaths(new = "/home/mascot/R/library", install_github('trestletech/rgl'))
withr::with_libpaths(new = "/home/mascot/R/library", install_github("trestletech/rgl", "js-class"))




# loop to install require packages
for (pack in package_list){
  print(pack)
  if(pack %in% rownames(installed.packages())) {   
    print("not installing")
  }else{
    print("installing")
    install.packages(pack, dependencies = TRUE, lib="/home/mascot/R/library") 
  }
}


#loop to install required BioConductor packages
for (pack in biocmanager_list){
  print(pack)
  if(pack %in% rownames(installed.packages())) {   
    print("not installing")
  }else{
    print("installing")
    BiocManager::install(pack, dependencies = TRUE, lib="/home/mascot/R/library") 
  }
}        

#BiocManager::install("org.Rn.eg.db", dependencies = TRUE, lib="/home/dpmsr/R/library")
#sudo su - -c "R -e \"BiocManager::install('org.Rn.eg.db')\""


# loop to check require packages
for (pack in package_list){
  if(pack %in% rownames(installed.packages())) {   
    print(" ")
  }else{
    print(pack)
    print("not found")
  }
}



#loop to install required BioConductor packages
for (pack in biocmanager_list){
  if(pack %in% rownames(installed.packages())) {   
    print(" ")
  }else{
    print(pack)
    print("not found")
  }
} 


install.packages('rgl', dependencies = TRUE, lib="/home/mascot/R/library")                            
devtools::install_version("rgl", version = "0.106.8", repos = "http://cran.us.r-project.org")
