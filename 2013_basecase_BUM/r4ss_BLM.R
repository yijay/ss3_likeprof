
 library(r4ss) # load package into current session
 dir <- "C:\\Users\\Yi-Jay.Chang\\Desktop\\01_Model2\\"
 setwd(dir)
 simple_BLM <- SS_output(dir)
 SS_plots(simple_BLM, pdf=TRUE,png=FALSE, pwidth=9, pheight=9, rows=1, cols=1)

