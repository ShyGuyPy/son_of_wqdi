fluidRow(style = "font-size:60%",
  # box(width = 12, 
  #heading 1
  # column(width = 1.5, p("Primary Filter")),
  # box(width =4,
      column(width = 4 , p("Primary Filter"), style='text-align:center; border:5px solid #3c8dbc;',#),
  #column(width = 2, 
  uiOutput("filter_col_1"),
  #),

  #column(width = 2, 
  uiOutput("filter_select_1"),#,style='margin-bottom:30px;border-right:5px solid #3c8dbc;'), ##padding: 5px;'),#),
  # ),#end box
      ),#end column
  
  # br(),
  
  #heading 2
  # column(width = 4, p("Secondary Filter")),                 
  # box(width =4,
  
  conditionalPanel(condition = 'input.filter_col_1 != "none"',
      column(width = 4, p("Secondary Filter"),style='text-align:center; border:5px solid #3c8dbc;',#),
                   #column(width = 2, 
             uiOutput("filter_col_2"),
             #),
                   #column(width = 2, 
             uiOutput("filter_select_2"),#,style='margin-bottom:30px;border-right:5px solid #3c8dbc;'), ##padding: 5px;'),#),
  # ),#end box
      ),#end column
  ),#end conditional panel
  
  # br(),
  conditionalPanel(condition = 'input.filter_col_2 != "none"',
  
  #heading 3
  # box(width =4,
  column(width = 4, p("Tertiary Filter"),style='text-align:center; border:5px solid #3c8dbc;',#),
                   #column(width = 2, 
         uiOutput("filter_col_3"),
         #),
                   #column(width = 2, 
         uiOutput("filter_select_3"),#),
  # ),#end box
  ),#end column
  ),#end conditional panel
  # ), #end box12
  
  # ),
  # column(width = 12,
  #        uiOutput("filter.message")),
  column(width = 12,
         actionButton("reset",
                      "Reset Filter",
                      icon = icon("undo"),
                      style = "width:100%; text-align: center; margin-top: 7px;")
  ),
  br(),
  hr()#,
  # column(width = 12, h3("Download")),
  # column(width = 12,
  #            downloadButton('download.program.rec',
  #                           'Download Filtered Program Data',
  #                           class = "button",
  #                           style = "width:100%;")
  #        ),
  # column(width = 12,
  #            downloadButton('download.site.rec',
  #                           'Download Filtered Site Data',
  #                           class = "button",
  #                           style = "width:100%;")
  #        ),
  # column(width = 12,
  #        downloadButton('download.colnames',
  #                       'Download Column Name Descriptions',
  #                       class = "button",
  #                       style = "width:100%;")
  # ),
  # column(width = 12,
  #        downloadButton('download.acronyms',
  #                       'Download Acronym Descriptions',
  #                       class = "button",
  #                       style = "width:100%;")
  # )
)