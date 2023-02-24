# # print("global is running")
# 
# library(profvis)
# # profvis({
# 
# #print(pryr::mem_used())
# 
# # Load packages ---------------------------------------------------------------
# # Use this one when not publishing to shinyapp.io, comment out when publishing:
# # source("global/load_packages.R", local = TRUE)
# # Use this one when publishing, can comment out otherwise:
# source("global/import_packages.R", local = TRUE)
# 
# #Modules-----------------------------------------------------------------------
# source("modules/module_dt.R")
# 
# #Functions---------------------------------------------------------------------
# 
# # Function enables the loading page feature of this app.
# load_data <- function() {
#   Sys.sleep(2)
#   hide("loading_page")
#   show("main_content")
# }
# #print(pryr::mem_used())
# 
# # Standardize data frame column names.
# standard_names <- function(x) {
#   x %>%
#     dplyr::rename_all(list(~tolower(.) %>% trimws() %>% gsub("  | ", "_", .)))
# }
# #Import Data--------------------------------------------------------------------------
# 
# colnames.df <- suppressWarnings(
#   data.table::fread("data/wqdi_colnames.csv",showProgress = FALSE,
#                     data.table = FALSE, header = TRUE)) %>%
#   standard_names()
# #------------------------------------------------------------------------------
# acronyms.df <- suppressWarnings(
#   data.table::fread("data/wqdi_acronyms.csv",showProgress = FALSE,
#                     data.table = FALSE, header = TRUE)) %>%
#   standard_names()
# #------------------------------------------------------------------------------
# inventory.df <- suppressWarnings(
#   data.table::fread("data/wqdi.csv", showProgress = FALSE,
#                     data.table = FALSE, header = TRUE)) %>%
#   standard_names() %>%
#   #dplyr::rename(source_no = "monitoring_station") %>%
#   select(source_no, lat, long)
# #------------------------------------------------------------------------------
# meta_new.df <- suppressWarnings(
#   data.table::fread("data/icprb_metadata.csv",
#                     showProgress = FALSE,
#                     data.table = FALSE, header = TRUE)) %>%
#   standard_names() #%>%
# #dplyr::rename(organization = "originator")
# #------------------------------------------------------------------------------
# meta_old.df <- suppressWarnings(
#   data.table::fread("data/icprb_metadata_old.csv",
#                     showProgress = FALSE,
#                     data.table = FALSE, header = TRUE)) %>%
#   standard_names() #%>%
# #dplyr::rename(organization = "originator")
# #------------------------------------------------------------------------------
# inventory_new.df <- full_join(inventory.df, meta_new.df, by = c("source_no"))
# # inventory.df[inventory.df == "N/A"] <- "Unavailable"
# # inventory.df[is.na(inventory.df)] <- "Unavailable"
# # rm(meta.df)
# #------------------------------------------------------------------------------
# inventory_old.df <- full_join(inventory.df, meta_old.df, by = c("source_no"))
# # inventory.df[inventory.df == "N/A"] <- "Unavailable"
# # inventory.df[is.na(inventory.df)] <- "Unavailable"
# # rm(meta.df)
# 
# 
# 
# ui <- fluidPage(
#   
#   useShinyjs(),
#   
#   
#   includeCSS("www/styles.css"),
#   source("ui/ui_loading.R", local = TRUE)$value,
#   # hidden(div(
#     id = "app_content",
#     dashboardPage(
#       dashboardHeader(title = "Water Quality Data Inventory",
#                       titleWidth = 300),
#       dashboardSidebar(#disable = TRUE),
#       ), #end dashboardSidebar
#       dashboardBody(
#         
#       )#end dashboardBody
#     )#end dashboardPage
#   # )#end div
#   # )#end hidden
# )#end fluidpage
#       
#       
#       server <- function(input, output) {
#         # options(rsconnect.max.bundle.size=xxxlarge)
#         # options(shiny.maxRequestSize=8000*1024^2)
#         
#         # Loading Page (Server) ---------------------------------------------------
#         load_data()
#         hide(id = "loading_content",
#              anim = TRUE,
#              animType = "fade")
#         show("app_content")
#         
#       }
#       profvis({
#       shinyApp(ui, server)
#       })
#       # })
#       
# profvis({
#   runApp("C:\\Users\\lvawter\\Documents\\R_scripts\\wqdi_development")
# })
#       