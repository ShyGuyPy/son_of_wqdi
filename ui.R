# UI---------------------------------------------------------------------------

ui <- fluidPage(

  useShinyjs(),


  includeCSS("www/styles.css"),
  source("ui/ui_loading.R", local = TRUE)$value,
  hidden(div(
    id = "app_content",
    dashboardPage(
      dashboardHeader(title = "Water Quality Data Inventory",
                      titleWidth = 300),
      dashboardSidebar(#disable = TRUE),

        tabsetPanel(#title = "stuff",
          tabPanel(title = "Filter", icon = icon("filter"),
                   source("ui/ui_filter_vertical2.R", local = TRUE)$value
          ),
          tabPanel(title =  "Download List", icon = icon("download"),
                   source("ui/ui_download_box.R", local = TRUE)$value
          )#, # end tabPanel

        )#, #end tabItems

      ), #end dashboardSidebar

      dashboardBody(

        
        fluidPage(fluidRow(
          column(width = 12,
                 tabBox(
                   width = 12,
                   height = 700,
                   #tabPanel("Program", icon = icon("table"),
                   dt_output("program_dt")#)
                   #  tabPanel("Site", icon = icon("table"),
                   #          dt_output("site_dt"))
                 )#end tabBox
                 )#end column
        )#end fluidrow
        )#end fluidpage
        


      )#end dashboardBody
    )#end dashboardPage
  )#end div
  )#end hidden
)#end fluidpage

