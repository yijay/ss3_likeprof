 ###################################################################################
 # R code for SS3 model likeliprofile
 # yi-jay.chang@noaa.gov
 # Date: 3/2/2015 1:55:07 PM
 ###################################################################################
 
 library(r4ss)

 mydir <- "C:\\Users\\Yi-Jay.Chang\\Desktop\\S2_improve\\lprof\\base_CPUE_CV0.2_add.splineCV_HarMeanN_v2_0.1multF5\\"
 setwd(mydir)
 
 # read starter file
 starter <- SS_readstarter(file.path(mydir, 'starter.ss'))
 
 # change control file name in the starter file
 starter$ctlfile <- "control_modified.ss"
 
 
 # make sure the prior likelihood is calculated
 # for non-estimated quantities
 starter$prior_like <- 1
 
 
 # write modified starter file
 SS_writestarter(starter, dir=mydir, overwrite=TRUE)

 # vector of values to profile over
 R0.vec <- c(5.8,5.9,6.0,6.1,6.2,6.3,6.4,6.5,6.6,6.7,6.8)
 Nprofile <- length(R0.vec)

 SS_parlines("SM_control.ss")
 
 #----------------------------------------------------------------------------------------------------\
 
 # Check the screen
 # 
 # line 72 is: 
 # LO    HI       INIT PRIOR        PR_type         SD          PHASE         Label          Linenum
 # 72    0.9000   1.3  1.50000e+00  1.0980e+00      -1 99.00    -1            SR_LN(R0)      72
  
 # run SS_profile command
 profile <- SS_profile(dir=mydir, # directory
                      model="ss3",
                      masterctlfile="SM_control.ss",
                      newctlfile="control_modified.ss",
                      linenum = 79,
                      profilevec=R0.vec,
                      extras="-nohess")
#-------------------------------------------------------------------------------------------------------

# read the output files (with names like Report1.sso, Report2.sso, etc.)
profilemodels <- SSgetoutput(dirvec=mydir, keyvec=1:Nprofile,getcovar = F,ncols = 500)

# CPUE
x1 = as.numeric(profilemodels$replist1$likelihoods_raw_by_fleet[4,21:35])
x2 = as.numeric(profilemodels$replist2$likelihoods_raw_by_fleet[4,21:35])
x3 = as.numeric(profilemodels$replist3$likelihoods_raw_by_fleet[4,21:35])
x4 = as.numeric(profilemodels$replist4$likelihoods_raw_by_fleet[4,21:35])
x5 = as.numeric(profilemodels$replist5$likelihoods_raw_by_fleet[4,21:35])
x6 = as.numeric(profilemodels$replist6$likelihoods_raw_by_fleet[4,21:35])
x7 = as.numeric(profilemodels$replist7$likelihoods_raw_by_fleet[4,21:35])
x8 = as.numeric(profilemodels$replist8$likelihoods_raw_by_fleet[4,21:35])
x9 = as.numeric(profilemodels$replist9$likelihoods_raw_by_fleet[4,21:35])
x10 = as.numeric(profilemodels$replist10$likelihoods_raw_by_fleet[4,21:35])
x11= as.numeric(profilemodels$replist11$likelihoods_raw_by_fleet[4,21:35])

CPUE_all = rbind(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
CPUE_minn = apply(CPUE_all,2,min)
CPUE_like_change = t(t(CPUE_all)-CPUE_minn)
CPUE_likeprofile = cbind(R0.vec,CPUE_like_change)


# Size
colm_index=c(3,4,5,6,7,13,14,15,18,19,20)
x1 = as.numeric(profilemodels$replist1$likelihoods_raw_by_fleet[6,colm_index])
x2 = as.numeric(profilemodels$replist2$likelihoods_raw_by_fleet[6,colm_index])
x3 = as.numeric(profilemodels$replist3$likelihoods_raw_by_fleet[6,colm_index])
x4 = as.numeric(profilemodels$replist4$likelihoods_raw_by_fleet[6,colm_index])
x5 = as.numeric(profilemodels$replist5$likelihoods_raw_by_fleet[6,colm_index])
x6 = as.numeric(profilemodels$replist6$likelihoods_raw_by_fleet[6,colm_index])
x7 = as.numeric(profilemodels$replist7$likelihoods_raw_by_fleet[6,colm_index])
x8 = as.numeric(profilemodels$replist8$likelihoods_raw_by_fleet[6,colm_index])
x9 = as.numeric(profilemodels$replist9$likelihoods_raw_by_fleet[6,colm_index])
x10 = as.numeric(profilemodels$replist10$likelihoods_raw_by_fleet[6,colm_index])
x11= as.numeric(profilemodels$replist11$likelihoods_raw_by_fleet[6,colm_index])

size_all = rbind(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
size_minn = apply(size_all,2,min)
size_like_change = t(t(size_all)-size_minn)

size_likeprofile = cbind(R0.vec,size_like_change)

all_likeprofile = cbind(CPUE_likeprofile,size_likeprofile)

colnames(all_likeprofile) <- c("R0_vec",
"S2_JPN_DWLL1","S3_JPN_DWLL1","S4_JPN_DWLL1",
"S5_JPN_DWLL2","S6_JPN_DWLL2","S7_JPN_DWLL2",
"S8_JPN_DWLL3","S9_JPN_DWLL3","S10_JPN_DWLL3",
"S11_JPN_CLL","S12_JPN_DRFIT_higS","S13_JPN_DRFIT_Coast","S14_TWN_LL_early","S15_TW_LL_Late","S16_HW_LL",

"R0_vec","F1_JPN_DWLL1","F2_JPN_DWLL2","F3_JPN_DWLL3","F4_JPN_CLL","F5_JPN_DRIFT","F11_JPN_OTR_EAR","F12_JPN_OTR_LATE",
"F13_TWN_LL","F16_HW_LL","F17_WCPO_OTR","F18_KOR_LL")

 write.table(all_likeprofile,paste(mydir,"r4ss_all_likeprofile.csv",sep=""),sep=",",row.names = FALSE,col.names = TRUE)

# summarize output
profilesummary <- SSsummarize(profilemodels)


# plot profile using summary created above
SSplotProfile(profilesummary,           # summary object
              profile.string = "R0",profile.label =
 "R0",print = TRUE,plotdir=mydir)

