# box(title = "Information", solidHeader = TRUE, status = "primary",
#     width = 12,
tags$div(
  tags$p(
    "The Interstate Commission on the Potomac River Basin's Water Quality Data Inventory",
    "is an interactive tool that provides access to existing water quality monitoring efforts",
    "in the Potomac River basin. These agencies monitor water quality for different",
    "reasons, so the information provided here is for identifying sources of data.",
    "ICPRB periodically updates this information, but it is not guaranteed to be complete,",
    'nor has it been deemed appropriate for any particular use.'
    
    
  ),
  tags$p(
    'You can visit the',
    tags$a(href = "https://www.potomacriver.org/focus-areas/water-quality/potomac-basin-water-quality-data-inventory/",
           "project page",
           target = "_blank"),
    'to learn more about the',
    'Water Quality Monitoring Inventory project.'
  ),
  tags$p(
    'Contact', tags$a(href= "mailto:hmoltz@icprb.org", "Dr. Heidi Moltz"),
    'with questions or to submit additional',
    'water quality data sources for inclusion in the inventory.'
  )
)
# )