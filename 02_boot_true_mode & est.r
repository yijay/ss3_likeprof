 ###################################################################################
 # R code for SS3 Bootstraping and estmation
 #
 # To do: 
 # generate ss3 bootstrap data in each folder
 # create batch file to run multiple ss3 estimation model for each folder's data
 #
 # yi-jay.chang@noaa.gov
 # 5/22/2015 11:19:30 AM
 ###################################################################################
 
 library(r4ss)

 mydir <- "C:\\Users\\Yi-Jay.Chang\\Desktop\\STM_SIM\\STM_TRUE_MODEL\\"    #<-----
 data_file_name = "SM_data.ss"     #<-----
 ctl_file_name = "SM_control.ss"   #<-----
 
  
 setwd(mydir)
 
 # read starter file
 starter <- SS_readstarter(file.path(mydir, 'starter.ss'))
 
 starter$init_values_src <- 1
 
 starter$last_estimation_phase <- 0

 num_boot = 100
 
 starter$N_bootstraps <- num_boot + 2
 
 # write modified starter file
 SS_writestarter(starter, dir=mydir, overwrite=TRUE)

 system("ss3 -nohess")
 
 
 # read starter file
 starter <- SS_readstarter(file.path(mydir, 'starter.ss'))
 
 starter$init_values_src <- 0
 
 starter$last_estimation_phase <- 100
 
 starter$N_bootstraps <- 1
 
 # write modified starter file
 SS_writestarter(starter, dir=mydir, overwrite=TRUE)
 
  
 scan_dat <- readLines("data.ss_new",encoding="UTF-8")

 head_index = grep("_bootstrap file:",value=F ,scan_dat)
 end_index = grep("^999$",value=F ,scan_dat)
 end_index = end_index[-c(1,2)]
 

  
 # create new control file  
 for(i in 1:length(head_index)){
 
 print(paste("Simulating bootstrap dataset = ",i,sep=""))
 
 # create folder
 dir.create(paste(mydir,"boot_",i,sep=""))
 print("creating folder")
 
 setwd(paste(mydir,"boot_",i,sep=""))
 total_line_num_per_block = end_index[i]-head_index[i]  
 for(j in 1:total_line_num_per_block){ 
 write(scan_dat[head_index[i]+j],data_file_name,append=T)
 }
 print("writing simulated data file") 
 
 file.copy(paste(mydir,"starter.ss",sep=""),paste(mydir,"boot_",i,"\\",sep=""))     
 file.copy(paste(mydir,"Forecast.SS",sep=""),paste(mydir,"boot_",i,"\\",sep=""))
 file.copy(paste(mydir,ctl_file_name,sep=""),paste(mydir,"boot_",i,"\\",sep=""))    
 print("Copying SS3 files")  
 }
 
 
 
 # set up the bat file
 
 setwd(mydir)
 
 begin_index = c(1, 21, 41, 61, 81) 
 
 for(j in 1:5){
 
 write("set OLDDIR=%CD%",paste("run_",j,".bat",sep=""),append=F)
 
 for(i in begin_index[j]:(begin_index[j]+20)){
 write(paste("cd ",mydir,"boot_",i,sep=""),paste("run_",j,".bat",sep=""),append=T)
 write(paste(mydir,"SS3.exe -nohess",sep=""),paste("run_",j,".bat",sep=""),append=T)
 }
 write("cd %OLDDIR%",paste("run_",j,".bat",sep=""),append=T)
 
 }
 
 write("set OLDDIR=%CD%","run_all.bat",append=T)
 write(paste("start ",mydir,"run_1.bat",sep=""),"run_all.bat",append=T)
 write(paste("start ",mydir,"run_2.bat",sep=""),"run_all.bat",append=T)
 write(paste("start ",mydir,"run_3.bat",sep=""),"run_all.bat",append=T)
 write(paste("start ",mydir,"run_4.bat",sep=""),"run_all.bat",append=T)
 write(paste("start ",mydir,"run_5.bat",sep=""),"run_all.bat",append=T)
 write("cd %OLDDIR%","run_all.bat",append=T)
 
 
 
 