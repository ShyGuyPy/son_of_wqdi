# Module adds text tooltip to column headers (Luke added 8/9/2022)
dt_tooltip <- function(dataframe){
  tooltip_test_df <- dataframe
}

# Module UI function
dt_output <- function(id) {
  # Create a namespace function using the provided id
  ns <- NS(id)
  
  tagList(
    div(#embedded in a div so that font can be modified
      DT::dataTableOutput(ns("dt_table"))
      # added to reduce data table font size so more information could be displayed
      ,style = "font-size:60%; font-weight: bold;"
    )#end div
  )
  
}

# Module Server function
dt_table <- function(input, output, session, data.df) {
  
  #defines hover tooltips to be added to filter column headers
  sketch = htmltools::withTags(table(
    class = 'display',
    thead(
      tr(
        th('', title = 'Row Names'),
        th("Program Name", title = 'Name of program conducting the data collection effort.'),
        th("Site Location", title = 'County(ies)/State(s) where data collection occurs.'),
        th("metric_parameter", title = 'Related groups of metric parameters.'),  
        th("data_link", title = 'Web link to download data.'),
        th("parameter_group", title = 'Related groups of metric parameters.'),
        th("program_website", title = 'Web link to the program’s website. '),
        th("purpose", title = 'Program’s stated purpose for the data collection effort.'),
        th("collection_method", title = 'Method used by program to collect data.'),
        th("spatial_coverage", title = 'Spatial coverage.'),
        th("period_of_record_start_date", title = 'Date data collection began.'),
        th("period_of_record_end_date", title = 'Most recent date of data collection as of ICPRB’s most recent validation (summer 2022).'),
        th("fall_line", title = 'Indicates where data collection occurs above, below, or both above and below the Fall Line.'),
        th("lat_long", title = 'The latitiude and longitude coordinates of site of data collection.'),
        th("frequency_sampled", title = 'How often data are collected.'),
        th("data_type", title = 'Format of data available for download from the program’s website.'),
        th("public_or_restricted_data", title = 'Is the data public or restricted access.'),
        th("dataset_fees", title = 'fees')
        
      )
    )
  ))
  
  output$dt_table <- DT::renderDataTable({
  validate(need(data.df(), "data.df not found"))
    validate(need(nrow(data.df()) > 0, "No data available for this filtering combination."))
    data.df <- data.df() %>% 
      rename_all(list(~stringr::str_replace_all(., "_", " "))) %>% 
      rename_all(stringr::str_to_title) 
  DT::datatable(data.df, 
                container = sketch, #adds hover tooltip to headers
                class = 'nowrap cell-border stripe',
                escape = FALSE,
                options = list(
                  dom = "ltip",
                  scrollX = TRUE,
                  scrollY = "350px",
                  pageLength = 50,
                  # autoWidth = TRUE
                  columnDefs = list(list(className = 'dt-center', targets = "_all"))
                )
                )
})
}
