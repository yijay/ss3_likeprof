
 # SS_COPY
 NAME = c("Model2")
 (WD <- getwd())
 dir.create(paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 file.copy("Starter.SS", paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 file.copy("Forecast.SS", paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 file.copy("BUM_ctl.ss", paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 file.copy("BUM_dat.ss", paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 file.copy("Report.sso", paste(WD,"/SS_COPY_",NAME,"/",sep=""))
 
 