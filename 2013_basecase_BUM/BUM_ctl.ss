#V3.24f
#_data_and_control_files: BUM_dat.ss // BUM_ctl.ss
#_SS-V3.24f-safe-Win64;_08/03/2012;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11
1  #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
1 #  number of recruitment assignments (overrides GP*area*seas parameter values) 
0 # recruitment interaction requested
#GP seas area for each recruitment assignment
 1 2 1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
1 #_Nblock_Patterns
 1 #_blocks_per_pattern 
# begin and end years of blocks
 2003 2011
#
0.5 #_fracfemale 
1 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
3 #_N_breakpoints
 0 1 4 # age(real) at M breakpoints
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciific_K; 4=not implemented
1 #_Growth_Age_for_L1
26 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from wtatage.ss
#_placeholder for empirical age-maturity by growth pattern
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
1 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 0 2 0.42 0.42 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_1_Fem_GP_1
 0 2 0.37 0.37 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_2_Fem_GP_1
 0 2 0.22 0.22 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_3_Fem_GP_1
 50 200 144 144 -1 99 -4 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 100 400 304.178 304.178 -1 99 -2 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.25 0.107 0.107 -1 99 -4 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 0.01 0.5 0.14 0.14 -1 99 -3 0 0 0 0 0 0 0 # CV_young_Fem_GP_1
 0.01 0.5 0.15 0.1 -1 99 -3 0 0 0 0 0 0 0 # CV_old_Fem_GP_1
 0 2 0.42 0.42 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_1_Mal_GP_1
 0 2 0.37 0.37 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_2_Mal_GP_1
 0 2 0.37 0.37 -1 99 -3 0 0 0 0 0 0 0 # NatM_p_3_Mal_GP_1
 50 200 144 144 -1 99 -4 0 0 0 0 0 0 0 # L_at_Amin_Mal_GP_1
 100 400 226 226 -1 99 -2 0 0 0 0 0 0 0 # L_at_Amax_Mal_GP_1
 0.05 0.25 0.211 0.211 -1 99 -4 0 0 0 0 0 0 0 # VonBert_K_Mal_GP_1
 0.01 0.5 0.14 0.14 -1 99 -3 0 0 0 0 0 0 0 # CV_young_Mal_GP_1
 0.01 0.5 0.1 0.1 -1 99 -3 0 0 0 0 0 0 0 # CV_old_Mal_GP_1
 0 3 1.844e-005 1.844e-005 -1 99 -3 0 0 0 0 0 0 0 # Wtlen_1_Fem
 0 3 2.956 2.956 -1 99 -3 0 0 0 0 0 0 0 # Wtlen_2_Fem
 1 400 179.76 179.76 -1 99 -3 0 0 0 0 0 0 0 # Mat50%_Fem
 -3 3 -0.2039 -0.2039 -1 99 -3 0 0 0 0 0 0 0 # Mat_slope_Fem
 0 3 1 1 -1 99 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem
 0 3 0 0 -1 99 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem
 0 3 1.37e-005 1.37e-005 -1 99 -3 0 0 0 0 0 0 0 # Wtlen_1_Mal
 0 3 2.975 2.975 -1 99 -3 0 0 0 0 0 0 0 # Wtlen_2_Mal
 -4 4 0 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_GP_1
 -4 4 0 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_Area_1
 -4 4 -4 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_Seas_1
 -4 4 -4 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_Seas_2
 -4 4 -4 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_Seas_3
 -4 4 -4 0 -1 99 -3 0 0 0 0 0 0 0 # RecrDist_Seas_4
 -4 4 1 1 -1 99 -3 0 0 0 0 0.5 0 0 # CohortGrowDev
#
#_Cond 0  #custom_MG-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-environ parameters
#
#_Cond 0  #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm
#_LO HI INIT PRIOR PR_type SD PHASE
 3 12 6.86278 9.3 -1 99 1 # SR_LN(R0)
 0.2 1 0.87 0.87 -1 99 -4 # SR_BH_steep
 0 2 0.32 0.6 -1 99 -3 # SR_sigmaR
 -5 5 0 0 -1 1 -3 # SR_envlink
 -5 5 0 0 -1 99 -1 # SR_R1_offset
 0 0 0 0 -1 99 -1 # SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1966 # first year of main recr_devs; early devs can preceed this era
2010 # last year of main recr_devs; forecast devs start in following year
2 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -4 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1966 #_last_early_yr_nobias_adj_in_MPD
 1971 #_first_yr_fullbias_adj_in_MPD
 2010 #_last_yr_fullbias_adj_in_MPD
 2011 #_first_recent_yr_nobias_adj_in_MPD
 0.65 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#DisplayOnly -0.0152867 # Main_InitAge_5
#DisplayOnly -0.0803688 # Main_InitAge_4
#DisplayOnly -0.192543 # Main_InitAge_3
#DisplayOnly -0.333628 # Main_InitAge_2
#DisplayOnly -0.374641 # Main_InitAge_1
#DisplayOnly -0.0521843 # Main_RecrDev_1971
#DisplayOnly -0.0992988 # Main_RecrDev_1972
#DisplayOnly -0.10697 # Main_RecrDev_1973
#DisplayOnly -0.556312 # Main_RecrDev_1974
#DisplayOnly -0.395194 # Main_RecrDev_1975
#DisplayOnly -0.342585 # Main_RecrDev_1976
#DisplayOnly 0.153851 # Main_RecrDev_1977
#DisplayOnly 0.0481593 # Main_RecrDev_1978
#DisplayOnly 0.205223 # Main_RecrDev_1979
#DisplayOnly -0.00269234 # Main_RecrDev_1980
#DisplayOnly 0.054175 # Main_RecrDev_1981
#DisplayOnly 0.297936 # Main_RecrDev_1982
#DisplayOnly 0.149278 # Main_RecrDev_1983
#DisplayOnly -0.004175 # Main_RecrDev_1984
#DisplayOnly -0.026336 # Main_RecrDev_1985
#DisplayOnly 0.199051 # Main_RecrDev_1986
#DisplayOnly 0.202066 # Main_RecrDev_1987
#DisplayOnly 0.204933 # Main_RecrDev_1988
#DisplayOnly 0.104813 # Main_RecrDev_1989
#DisplayOnly 0.177246 # Main_RecrDev_1990
#DisplayOnly 0.138738 # Main_RecrDev_1991
#DisplayOnly 0.0989125 # Main_RecrDev_1992
#DisplayOnly 0.0539621 # Main_RecrDev_1993
#DisplayOnly -0.0544591 # Main_RecrDev_1994
#DisplayOnly 0.0456691 # Main_RecrDev_1995
#DisplayOnly 0.00397911 # Main_RecrDev_1996
#DisplayOnly 0.165626 # Main_RecrDev_1997
#DisplayOnly -0.371254 # Main_RecrDev_1998
#DisplayOnly -0.0134024 # Main_RecrDev_1999
#DisplayOnly 0.0616684 # Main_RecrDev_2000
#DisplayOnly -0.0233522 # Main_RecrDev_2001
#DisplayOnly 0.0682847 # Main_RecrDev_2002
#DisplayOnly 0.245532 # Main_RecrDev_2003
#DisplayOnly -0.0027985 # Main_RecrDev_2004
#DisplayOnly 0.152874 # Main_RecrDev_2005
#DisplayOnly 0.134548 # Main_RecrDev_2006
#DisplayOnly -0.0795453 # Main_RecrDev_2007
#DisplayOnly -0.131291 # Main_RecrDev_2008
#DisplayOnly 0.40023 # Main_RecrDev_2009
#DisplayOnly -0.10844 # Main_RecrDev_2010
#
#Fishing Mortality info 
0.5 # F ballpark for tuning early phases
-1960 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
5  # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
 0 3 0.721221 0 -1 99 1 # InitF_1JPN_DW&OSLLearly
 0 1 0 0 -1 99 -1 # InitF_2JPN_DW&OSLLlate
 0 1 0 0 -1 99 -1 # InitF_3JPN_CLL
 0 1 0 0 -1 99 -1 # InitF_4JPN_DRIFT
 0 1 0 0 -1 99 -1 # InitF_5JPN_BAIT
 0 1 0 0 -1 99 -1 # InitF_6JPN_OTHER
 0 1 0 0 -1 99 -1 # InitF_7HW_LL
 0 1 0 0 -1 99 -1 # InitF_8USA_LL
 0 1 0 0 -1 99 -1 # InitF_9HW_OTHER
 0 1 0 0 -1 99 -1 # InitF_10TW_DWLL
 0 1 0 0 -1 99 -1 # InitF_11TW_OS&C_LL&oth
 0 1 0 0 -1 99 -1 # InitF_12WCPFC&IATTC_LL
 0 1 0 0 -1 99 -1 # InitF_13PF_LL
 0 1 0 0 -1 99 -1 # InitF_14IATTC_PS
 0 1 0 0 -1 99 -1 # InitF_15WCPFC_PS
 0 1 0 0 -1 99 -1 # InitF_16IATTC_OTHER
#
#_Q_setup
 # Q_type options:  <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_nobiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked
#_Den-dep  env-var  extra_se  Q_type
 0 0 0 0 # 1 JPN_DW&OSLLearly
 0 0 0 0 # 2 JPN_DW&OSLLlate
 0 0 0 0 # 3 JPN_CLL
 0 0 0 0 # 4 JPN_DRIFT
 0 0 0 0 # 5 JPN_BAIT
 0 0 0 0 # 6 JPN_OTHER
 0 0 0 0 # 7 HW_LL
 0 0 0 0 # 8 USA_LL
 0 0 0 0 # 9 HW_OTHER
 0 0 0 0 # 10 TW_DWLL
 0 0 0 0 # 11 TW_OS&C_LL&oth
 0 0 0 0 # 12 WCPFC&IATTC_LL
 0 0 0 0 # 13 PF_LL
 0 0 0 0 # 14 IATTC_PS
 0 0 0 0 # 15 WCPFC_PS
 0 0 0 0 # 16 IATTC_OTHER
 0 0 0 0 # 17 S1_JPN_DW&OSLL
 0 0 0 0 # 18 S2_JPN_DW&OSLL
 0 0 0 0 # 19 S3_HW_LL
 0 0 0 0 # 20 S4_TW_DWLL
 0 0 0 0 # 21 S5_TW_DWLL
 0 0 0 0 # 22 S6_TW_DWLL
#
#_Cond 0 #_If q has random component, then 0=read one parm for each fleet with random q; 1=read a parm for each year of index
#_Q_parms(if_any)
#
#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead
#_Pattern Discard Male Special
 27 0 0 4 # 1 JPN_DW&OSLLearly
 24 0 0 0 # 2 JPN_DW&OSLLlate
 5 0 0 2 # 3 JPN_CLL
 24 0 0 0 # 4 JPN_DRIFT
 5 0 0 4 # 5 JPN_BAIT
 5 0 0 2 # 6 JPN_OTHER
 27 0 0 3 # 7 HW_LL
 5 0 0 7 # 8 USA_LL
 5 0 0 7 # 9 HW_OTHER
 24 0 0 0 # 10 TW_DWLL
 5 0 0 10 # 11 TW_OS&C_LL&oth
 24 0 0 0 # 12 WCPFC&IATTC_LL
 24 0 0 0 # 13 PF_LL
 24 0 0 0 # 14 IATTC_PS
 5 0 0 14 # 15 WCPFC_PS
 5 0 0 14 # 16 IATTC_OTHER
 5 0 0 1 # 17 S1_JPN_DW&OSLL
 5 0 0 2 # 18 S2_JPN_DW&OSLL
 5 0 0 7 # 19 S3_HW_LL
 5 0 0 10 # 20 S4_TW_DWLL
 5 0 0 10 # 21 S5_TW_DWLL
 5 0 0 10 # 22 S6_TW_DWLL
#
#_age_selex_types
#_Pattern ___ Male Special
 11 0 0 0 # 1 JPN_DW&OSLLearly
 11 0 0 0 # 2 JPN_DW&OSLLlate
 11 0 0 0 # 3 JPN_CLL
 11 0 0 0 # 4 JPN_DRIFT
 11 0 0 0 # 5 JPN_BAIT
 11 0 0 0 # 6 JPN_OTHER
 11 0 0 0 # 7 HW_LL
 11 0 0 0 # 8 USA_LL
 11 0 0 0 # 9 HW_OTHER
 11 0 0 0 # 10 TW_DWLL
 11 0 0 0 # 11 TW_OS&C_LL&oth
 11 0 0 0 # 12 WCPFC&IATTC_LL
 11 0 0 0 # 13 PF_LL
 11 0 0 0 # 14 IATTC_PS
 11 0 0 0 # 15 WCPFC_PS
 11 0 0 0 # 16 IATTC_OTHER
 11 0 0 0 # 17 S1_JPN_DW&OSLL
 11 0 0 0 # 18 S2_JPN_DW&OSLL
 11 0 0 0 # 19 S3_HW_LL
 11 0 0 0 # 20 S4_TW_DWLL
 11 0 0 0 # 21 S5_TW_DWLL
 11 0 0 0 # 22 S6_TW_DWLL
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 -2 2 0 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Code_JPN_DW&OSLLearly_1
 -5 5 0.0801475 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_GradLo_JPN_DW&OSLLearly_1
 -5 2 -0.233817 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_GradHi_JPN_DW&OSLLearly_1
 80 100 80 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_1_JPN_DW&OSLLearly_1
 100 155 145 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_2_JPN_DW&OSLLearly_1
 150 200 190 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_3_JPN_DW&OSLLearly_1
 300 320 320 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_4_JPN_DW&OSLLearly_1
 -5 3 -2.58954 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_1_JPN_DW&OSLLearly_1
 -5 4 3.58794 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_2_JPN_DW&OSLLearly_1
 -5 4 3.02191 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Val_3_JPN_DW&OSLLearly_1
 -5 3 -4.8389 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_4_JPN_DW&OSLLearly_1
 100 300 160.25 66 -1 99 3 0 0 0 0 0 0 0 # SizeSel_2P_1_JPN_DW&OSLLlate
 -19 12 -0.784161 -3 -1 99 3 0 0 0 0 0 0 0 # SizeSel_2P_2_JPN_DW&OSLLlate
 -10 12 6.31431 4 -1 99 3 0 0 0 0 0 0 0 # SizeSel_2P_3_JPN_DW&OSLLlate
 -5 19 9.27944 5 -1 99 3 0 0 0 0 0 0 0 # SizeSel_2P_4_JPN_DW&OSLLlate
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_2P_5_JPN_DW&OSLLlate
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_2P_6_JPN_DW&OSLLlate
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_3P_1_JPN_CLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_3P_2_JPN_CLL
 80 300 229.271 66 -1 99 3 0 0 0 0 0 0 0 # SizeSel_4P_1_JPN_DRIFT
 -19 12 -12.3996 -3 -1 99 3 0 0 0 0 0 0 0 # SizeSel_4P_2_JPN_DRIFT
 -5 12 6.4492 4 -1 99 3 0 0 0 0 0 0 0 # SizeSel_4P_3_JPN_DRIFT
 -5 12 5.87563 5 -1 99 3 0 0 0 0 0 0 0 # SizeSel_4P_4_JPN_DRIFT
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_4P_5_JPN_DRIFT
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_4P_6_JPN_DRIFT
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_5P_1_JPN_BAIT
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_5P_2_JPN_BAIT
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_6P_1_JPN_OTHER
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_6P_2_JPN_OTHER
 -2 2 0 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Code_HW_LL_7
 -5 5 0.0652704 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_GradLo_HW_LL_7
 -5 2 0 0.0911842 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_GradHi_HW_LL_7
 80 100 80 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_1_HW_LL_7
 100 200 160 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_2_HW_LL_7
 150 300 200 0 -1 99 -4 0 0 0 0 0 0 0 # SizeSpline_Knot_3_HW_LL_7
 -5 3 -3.57915 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_1_HW_LL_7
 -5 4 1.64224 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_2_HW_LL_7
 -5 3 0.783339 0 -1 99 4 0 0 0 0 0 0 0 # SizeSpline_Val_3_HW_LL_7
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_8P_1_USA_LL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_8P_2_USA_LL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_9P_1_HW_OTHER
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_9P_2_HW_OTHER
 100 300 174.626 66 -1 99 3 0 0 0 0 0 0 0 # SizeSel_10P_1_TW_DWLL
 -19 12 -11.8299 -3 -1 99 3 0 0 0 0 0 0 0 # SizeSel_10P_2_TW_DWLL
 -5 12 6.98128 4 -1 99 3 0 0 0 0 0 0 0 # SizeSel_10P_3_TW_DWLL
 -5 12 8.59924 5 -1 99 3 0 0 0 0 0 0 0 # SizeSel_10P_4_TW_DWLL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_10P_5_TW_DWLL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_10P_6_TW_DWLL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_11P_1_TW_OS&C_LL&oth
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_11P_2_TW_OS&C_LL&oth
 100 300 172.626 66 -1 99 3 0 0 0 0 0 0 0 # SizeSel_12P_1_WCPFC&IATTC_LL
 -19 12 -10.8452 -3 -1 99 3 0 0 0 0 0 0 0 # SizeSel_12P_2_WCPFC&IATTC_LL
 -5 12 6.48935 4 -1 99 3 0 0 0 0 0 0 0 # SizeSel_12P_3_WCPFC&IATTC_LL
 -5 15 10.0865 5 -1 99 3 0 0 0 0 0 0 0 # SizeSel_12P_4_WCPFC&IATTC_LL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_12P_5_WCPFC&IATTC_LL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_12P_6_WCPFC&IATTC_LL
 80 322 92.8713 66 -1 99 3 0 0 0 0 0 1 2 # SizeSel_13P_1_PF_LL
 -19 12 -12.8637 -3 -1 99 3 0 0 0 0 0 1 2 # SizeSel_13P_2_PF_LL
 -10 12 -4.55127 4 -1 99 3 0 0 0 0 0 1 2 # SizeSel_13P_3_PF_LL
 -10 15 5.48146 5 -1 99 3 0 0 0 0 0 1 2 # SizeSel_13P_4_PF_LL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_13P_5_PF_LL
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_13P_6_PF_LL
 100 300 227.018 66 -1 99 3 0 0 0 0 0 0 0 # SizeSel_14P_1_IATTC_PS
 -19 12 -11.8585 -3 -1 99 3 0 0 0 0 0 0 0 # SizeSel_14P_2_IATTC_PS
 -5 12 7.25479 4 -1 99 3 0 0 0 0 0 0 0 # SizeSel_14P_3_IATTC_PS
 -5 12 8.42283 5 -1 99 3 0 0 0 0 0 0 0 # SizeSel_14P_4_IATTC_PS
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_14P_5_IATTC_PS
 -999 -999 -999 -5 -1 99 -2 0 0 0 0 0 0 0 # SizeSel_14P_6_IATTC_PS
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_15P_1_WCPFC_PS
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_15P_2_WCPFC_PS
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_16P_1_IATTC_OTHER
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_16P_2_IATTC_OTHER
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_17P_1_S1_JPN_DW&OSLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_17P_2_S1_JPN_DW&OSLL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_18P_1_S2_JPN_DW&OSLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_18P_2_S2_JPN_DW&OSLL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_19P_1_S3_HW_LL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_19P_2_S3_HW_LL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_20P_1_S4_TW_DWLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_20P_2_S4_TW_DWLL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_21P_1_S5_TW_DWLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_21P_2_S5_TW_DWLL
 -1 10 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_22P_1_S6_TW_DWLL
 -61 61 -61 -61 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_22P_2_S6_TW_DWLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_1P_1_JPN_DW&OSLLearly
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_1P_2_JPN_DW&OSLLearly
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_2P_1_JPN_DW&OSLLlate
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_2P_2_JPN_DW&OSLLlate
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_3P_1_JPN_CLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_3P_2_JPN_CLL
 0 26 1 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_4P_1_JPN_DRIFT
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_4P_2_JPN_DRIFT
 0 26 1 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_5P_1_JPN_BAIT
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_5P_2_JPN_BAIT
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_6P_1_JPN_OTHER
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_6P_2_JPN_OTHER
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_7P_1_HW_LL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_7P_2_HW_LL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_8P_1_USA_LL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_8P_2_USA_LL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_9P_1_HW_OTHER
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_9P_2_HW_OTHER
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_10P_1_TW_DWLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_10P_2_TW_DWLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_11P_1_TW_OS&C_LL&oth
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_11P_2_TW_OS&C_LL&oth
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_12P_1_WCPFC&IATTC_LL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_12P_2_WCPFC&IATTC_LL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_13P_1_PF_LL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_13P_2_PF_LL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_14P_1_IATTC_PS
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_14P_2_IATTC_PS
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_15P_1_WCPFC_PS
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_15P_2_WCPFC_PS
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_16P_1_IATTC_OTHER
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_16P_2_IATTC_OTHER
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_17P_1_S1_JPN_DW&OSLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_17P_2_S1_JPN_DW&OSLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_18P_1_S2_JPN_DW&OSLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_18P_2_S2_JPN_DW&OSLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_19P_1_S3_HW_LL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_19P_2_S3_HW_LL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_20P_1_S4_TW_DWLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_20P_2_S4_TW_DWLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_21P_1_S5_TW_DWLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_21P_2_S5_TW_DWLL
 0 26 0 1 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_22P_1_S6_TW_DWLL
 0 26 26 80 -1 99 -4 0 0 0 0 0 0 0 # AgeSel_22P_2_S6_TW_DWLL
#_Cond 0 #_custom_sel-env_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
1 #_custom_sel-blk_setup (0/1) 
 80 322 181.842 66 -1 99 3 # SizeSel_13P_1_PF_LL_BLK1repl_2003
 -19 12 2.96656 -3 -1 99 3 # SizeSel_13P_2_PF_LL_BLK1repl_2003
 -10 17 6.87238 4 -1 99 3 # SizeSel_13P_3_PF_LL_BLK1repl_2003
 -10 15 1.40735 5 -1 99 3 # SizeSel_13P_4_PF_LL_BLK1repl_2003
#_Cond No selex parm trends 
#_Cond -4 # placeholder for selparm_Dev_Phase
1 #_env/block/dev_adjust_method (1=standard; 2=logistic trans to keep in base parm bounds; 3=standard w/ no bound check)
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#_fleet: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 
  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.113 0.123 0.072 0 0 0 #_add_to_survey_CV
  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 #_add_to_discard_stddev
  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 #_add_to_bodywt_CV
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 #_mult_by_lencomp_N
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 #_mult_by_agecomp_N
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 #_mult_by_size-at-age_N
#
6 #_maxlambdaphase
1 #_sd_offset
#
16 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey  phase  value  sizefreq_method
 9 1 1 0 1
 
 4 1 1 1 1
 4 2 1 1 1
 4 7 1 1 1
 4 10 1 1 1
 4 14 1 1 1
 
 6 4 1 1 2
 6 12 1 1 1
 6 13 1 1 1
 
 1 17 1 1 1
 1 18 1 1 1
 1 19 1 0 1
 1 20 1 1 1
 1 21 1 1 1
 1 22 1 1 1
 11 1 1 0 1
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 0 0 #_CPUE/survey:_1
#  0 0 0 0 0 0 #_CPUE/survey:_2
#  0 0 0 0 0 0 #_CPUE/survey:_3
#  0 0 0 0 0 0 #_CPUE/survey:_4
#  0 0 0 0 0 0 #_CPUE/survey:_5
#  0 0 0 0 0 0 #_CPUE/survey:_6
#  0 0 0 0 0 0 #_CPUE/survey:_7
#  0 0 0 0 0 0 #_CPUE/survey:_8
#  0 0 0 0 0 0 #_CPUE/survey:_9
#  0 0 0 0 0 0 #_CPUE/survey:_10
#  0 0 0 0 0 0 #_CPUE/survey:_11
#  0 0 0 0 0 0 #_CPUE/survey:_12
#  0 0 0 0 0 0 #_CPUE/survey:_13
#  0 0 0 0 0 0 #_CPUE/survey:_14
#  0 0 0 0 0 0 #_CPUE/survey:_15
#  0 0 0 0 0 0 #_CPUE/survey:_16
#  1 1 1 1 1 1 #_CPUE/survey:_17
#  1 1 1 1 1 1 #_CPUE/survey:_18
#  0 0 0 0 0 0 #_CPUE/survey:_19
#  1 1 1 1 1 1 #_CPUE/survey:_20
#  1 1 1 1 1 1 #_CPUE/survey:_21
#  1 1 1 1 1 1 #_CPUE/survey:_22
#  1 1 1 1 1 1 #_lencomp:_1
#  1 1 1 1 1 1 #_lencomp:_2
#  0 0 0 0 0 0 #_lencomp:_3
#  0 0 0 0 0 0 #_lencomp:_4
#  0 0 0 0 0 0 #_lencomp:_5
#  0 0 0 0 0 0 #_lencomp:_6
#  1 1 1 1 1 1 #_lencomp:_7
#  0 0 0 0 0 0 #_lencomp:_8
#  0 0 0 0 0 0 #_lencomp:_9
#  1 1 1 1 1 1 #_lencomp:_10
#  0 0 0 0 0 0 #_lencomp:_11
#  0 0 0 0 0 0 #_lencomp:_12
#  0 0 0 0 0 0 #_lencomp:_13
#  1 1 1 1 1 1 #_lencomp:_14
#  0 0 0 0 0 0 #_lencomp:_15
#  0 0 0 0 0 0 #_lencomp:_16
#  0 0 0 0 0 0 #_lencomp:_17
#  0 0 0 0 0 0 #_lencomp:_18
#  0 0 0 0 0 0 #_lencomp:_19
#  0 0 0 0 0 0 #_lencomp:_20
#  0 0 0 0 0 0 #_lencomp:_21
#  0 0 0 0 0 0 #_lencomp:_22
#  1 1 1 1 1 1 #_sizefreq:_1
#  1 1 1 1 1 1 #_sizefreq:_2
#  1 1 1 1 1 1 #_sizefreq:_3
#  0 0 0 0 0 0 #_init_equ_catch
#  1 1 1 1 1 1 #_recruitments
#  0 0 0 0 0 0 #_parameter-priors
#  1 1 1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 1 1 #_crashPenLambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

