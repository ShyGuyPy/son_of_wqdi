# ******************************************************************
# run_all_offline runs the model outside of Shiny, for QAing
# by running in this way, the data dataframes appear in Environment
# ******************************************************************
# First run global.R, which loads packages, paths, functions
# It also runs import_data.R and scripts in /global/data_processing
# Thus, you can inspect most dataframes of interest

library(profvis)###package for tracking run time of app components

profvis({
# print("run_all_offline is running")

source("global.R", local = TRUE)
# print("gloabl.R has run")

})#end profvis

# profvis({ runApp('/Users/lvawter/Documents/R_scripts/wqdi_development') }
#         , prof_output = '/Users/lvawter//Documents/R_scripts/wqdi_development')
# 
# # Load saved profvis
# profvis(prof_input = '/Users/lvawter//Documents/R_scripts/wqdi_development/file3b9c1f3a5e1d.Rprof')
# 
# profvis(prof_input = '/Users/lvawter//Documents/R_scripts/wqdi_development/file3b9c72687e68.Rprof')
