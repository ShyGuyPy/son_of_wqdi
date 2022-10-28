# UI---------------------------------------------------------------------------
###testing###
sketch = htmltools::withTags(table(
  class = 'display',
  thead(
    tr(
      th('', title = 'Row Names'),
      th('Program Name', title = 'test output for program name'),
      th('Site Location', title = 'The Site Location')#,
      # th('Petal.Length', title = 'The Petal Length'),
      # th('Petal.Width', title = 'The Petal Width'),
      # th('Species', title = 'Iris Species')
    )
  )
))
###testing###

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
        # width = 300,
        # sidebarMenu(
        # tabItems(
        
        
        # sidebarPanel(
        tabsetPanel(#title = "stuff",
          tabPanel(title = "Filter", icon = icon("filter"),
                   source("ui/ui_filter_vertical2.R", local = TRUE)$value
          ),
          tabPanel(title =  "Download List", icon = icon("download"), 
                   source("ui/ui_download_box.R", local = TRUE)$value
          )#, # end tabPanel
          
        )#, #end tabItems
        # ),
        
        # )
        
        # sidebarMenu(id = "tab", 
        #             menuItem("1", tabName = "1"),
        #             menuItem("2", tabName = "2")
        # ),
        
        
      ), #end dashboardSidebar
      
      # dashboardSidebar(width = 100,
      #                  sidebarMenu(
      #                    # menuItem(
      #                    #   "Information",
      #                    #   tabName = "info_tab",
      #                    #   icon = icon("info-circle")
      #                    # ),
      #                    # menuItem("Tabular", tabName = "tabular_tab", icon = icon("table"))#,
      #                    # # menuItem("Map", tabName = "map_tab", icon = icon("globe"))
      #                  )
      # ),
      dashboardBody(#tabItems(
        # tabItem(tabName = "info_tab",
        #         fluidPage(fluidRow(
        #           column(width = 12,
        #                  fluidRow(
        #                    box(
        #                      width = 12,
        #                      title = tagList(shiny::icon("inco-circle"), "Information"),
        #                      solidHeader = TRUE,
        #                      status = "primary",
        #                      source("ui/ui_info.R", local = TRUE)$value
        #                    ),
        #                    box(
        #                      width = 12,
        #                      title = tagList(shiny::icon("graduation-cap"), "Instructions"),
        #                      solidHeader = TRUE,
        #                      status = "primary",
        #                      source("ui/ui_instructions.R", local = TRUE)$value
        #                    )
        #                  ))
        #         ))),
        #tabItem(tabName = "tabular_tab",
        fluidPage(fluidRow(
          # column(
          #   width = 12,
          #   tabBox(width = 12,
          #          tabPanel("Filter", icon = icon("filter"),
          #                   source("ui/ui_filter.R", local = TRUE)$value),
          #          tabPanel("Download", icon = icon("download"),
          #                   source("ui/ui_download_box.R", local = TRUE)$value)
          #   ),
          # ),
          # 
          column(width = 12,
                 tabBox(
                   width = 12,
                   height = 700,
                   #tabPanel("Program", icon = icon("table"),
                   dt_output("program_dt")#)
                   #  tabPanel("Site", icon = icon("table"),
                   #          dt_output("site_dt"))
                 ))
        ))
        #)#end tabitem,
        #   tabItem(tabName = "map_tab",
        #           fluidPage(fluidRow(
        #             column(width = 4,
        #                    box(width = 12,
        #                        source("ui/ui_leaflet_filter.R", local = TRUE)$value),
        #                    br(),
        #                    valueBoxOutput("leaflet_point_count", width = 12)),
        #             column(width = 8,
        #                    box(width = 12,
        #                        leaflet::leafletOutput("mymap",
        #                                               height = "590px",
        #                                               width = "100%")
        #                    ))
        #           ))
        # 
        # )
        #)#end tabitems
      )#end dashboardBody
    )#end dashboardPage
  )#end div
  )#end hidden
)

