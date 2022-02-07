# fluidRow(style = "font-size:60%",
#          fluidRow(
#            column(width = 4, h3("Primary Filter"),#),
#            # column(width = 4, 
#                   uiOutput("filter_col_1"),#),
#            #column(width = 4, 
#                   uiOutput("filter_select_1")
#            ),#end col
#            br(),
#            conditionalPanel(condition = 'input.filter_col_1 != "none"',
#                             column(width = 4, h3("Secondary Filter"),#),
#                             # column(width = 4, 
#                                    uiOutput("filter_col_2"),#),
#                             # column(width = 4, 
#                                    uiOutput("filter_select_2")
#                             )#end col
#                             ),#end conditional panel
#            br(),
#            conditionalPanel(condition = 'input.filter_col_2 != "none"',
#                             column(width = 4, h3("Tertiary Filter"),#),
#                             #column(width = 4, 
#                             uiOutput("filter_col_3"),#),
#                             #column(width = 4, 
#                             uiOutput("filter_select_3")
#                             )#end col
#            ),#end conditional panel
#          )
# )
# conditionalPanel(condition = '1 == 1',
sidebarMenu(id = 'f1',
    menuItem(text = "Primary Filter"),
    sidebarMenuOutput("filter_col_1"),
    sidebarMenuOutput("filter_select_1")
)
# ) #end conditional panel




    # conditionalPanel(condition = 'input.filter_col_1" != "none"',#'input.filter_col_1" != "none"',
# sidebarMenu(id = 'f2',
#     menuItem(text = "Secondary Filter")#,
    # sidebarMenuOutput("filter_col_2"),
    # sidebarMenuOutput("filter_select_2")
# )
    # )#end conditional panel

    # conditionalPanel(condition = 'input.filter_col_2 != "none"',
# sidebarMenu(
#     menuItem(text = "Tertiary Filter"),
#     sidebarMenuOutput("filter_col_3"),
#     sidebarMenuOutput("filter_select_3")
# )
    # )#end conditional panel
  #/ )
