sidebarMenu(id = 'f1',
            
            menuItem(text = "Primary Filter"),
            sidebarMenuOutput("filter_col_1"),
            sidebarMenuOutput("filter_select_1"),
            
            
            conditionalPanel(condition =  'input.filter_select_1 != ""',#'input.filter_col_1" != "none"',
            
            menuItem(text = "Secondary Filter"),
            sidebarMenuOutput("filter_col_2"),
            sidebarMenuOutput("filter_select_2")
  
            ),#end conditional panel
            
            
            conditionalPanel(condition = 'input.filter_select_2 != ""',
            
                menuItem(text = "Tertiary Filter"),
                sidebarMenuOutput("filter_col_3"),
                sidebarMenuOutput("filter_select_3")
            )#end conditional panel
            
)